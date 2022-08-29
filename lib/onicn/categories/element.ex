defmodule Onicn.Categories.Element do
  @available_fields %{
    category: "资源种类",
    low_temp: {"低温相变温度", "°C"},
    low_temp_transition_target: "低温相变产物",
    high_temp: {"高温相变温度", "°C"},
    high_temp_transition_target: "高温相变产物",
    specific_heat_capacity: {"比热容", "(DTU/g)/°C"},
    thermal_conductivity: {"导热率", "(DTU/(m*s))/°C"},
    hardness: "硬度",
    mass_per_tile: {"每格质量", "kg"},
    molar_mass: {"摩尔质量", "g/mol"}
  }

  @sortable_fields [
    :low_temp,
    :high_temp,
    :specific_heat_capacity,
    :thermal_conductivity,
    :hardness,
    :mass_per_tile,
    :molar_mass
  ]

  defmacro __using__(options) do
    quote bind_quoted: [options: options] do
      name = options[:name]
      cn_name = options[:cn_name]
      fields = options[:fields]

      defmacro __using__(attributes) do
        category_name = unquote(name)
        category_cn_name = unquote(cn_name)
        category_fields = unquote(fields)
        element_id = __CALLER__.module |> to_string() |> String.split(".") |> List.last()

        quote do
          use Onicn.Content

          def __attributes__ do
            Onicn.Categories.Element.__elements__()
            |> Map.get(unquote(category_name))
            |> Enum.find(fn e -> e["elementId"] === unquote(element_id) end)
            |> Onicn.Categories.Element.parse(unquote(category_fields))
            |> Keyword.merge(unquote(attributes))
            |> Keyword.put(:name, Macro.underscore(unquote(element_id)))
            |> Keyword.put(:category_name, unquote(category_name))
          end

          def output(:html_attributes) do
            Onicn.Categories.Element.output(:html_attributes, __MODULE__)
          end

          def output(:link_name_icon) do
            a = __attributes__()
            path = "/#{a[:category_name]}/#{a[:name]}"

            ~s|<a href="#{path}">
              <img src="/img#{path}.png" style="weight:16px;height:16px;">
              #{a[:cn_name]}
            </a>|
          end

          def output(:edit_link) do
            a = __attributes__()
            "https://github.com/onicn/oni-cn.com/blob/main/lib/onicn/elements/#{a[:name]}.ex"
          end
        end
      end

      def __name__ do
        unquote(name)
      end

      def __cn_name__ do
        unquote(cn_name)
      end

      def __fields__ do
        unquote(fields)
      end

      def __element_modules__ do
        case :persistent_term.get({__MODULE__, :__element_modules__}, nil) do
          nil ->
            data = do_element_modules()
            :persistent_term.put({__MODULE__, :__element_modules__}, data)
            data

          data ->
            data
        end
      end

      defp do_element_modules do
        Onicn.Categories.Element.__elements__()
        |> Map.get(unquote(name))
        |> Enum.map(fn %{"elementId" => element_id} ->
          ["Onicn.Elements", element_id]
          |> Module.concat()
          |> Code.ensure_compiled()
          |> case do
            {:module, module} -> module
            {:error, :nofile} -> nil
          end
        end)
        |> Enum.reject(&is_nil/1)
      end

      def generate_pages do
        __element_modules__()
        |> Enum.map(
          &Task.async(fn -> Onicn.Categories.Element.generate_page(&1, unquote(name)) end)
        )
        |> Enum.each(&Task.await(&1, :infinity))
      end

      def output(:json_elements) do
        Enum.map(__element_modules__(), fn module ->
          module.__attributes__
          |> Enum.filter(fn {field, _} -> field in unquote(fields) end)
          |> Keyword.put(:cn_name, module.output(:link_name_icon))
          |> Onicn.Categories.Element.attributes_to_json()
        end)
      end

      def output(:link_name_icon) do
        ~s|<a href="/#{unquote(name)}/">#{unquote(cn_name)}</a>|
      end

      def output(:html_body) do
        Onicn.Categories.Element.output(:html_body, unquote(name), unquote(fields))
      end
    end
  end

  elements =
    ["solid", "liquid", "gas"]
    |> Map.new(fn name ->
      {
        name,
        :onicn
        |> :code.priv_dir()
        |> Path.join("data/#{name}.yaml")
        |> YamlElixir.read_from_file!()
        |> Map.get("elements")
      }
    end)
    |> Macro.escape()

  def __elements__ do
    unquote(elements)
  end

  def parse(element, fields) do
    Enum.concat([
      case element do
        %{
          "highTemp" => high_temp,
          "highTempTransitionTarget" => target_1,
          "highTempTransitionOreId" => target_2,
          "highTempTransitionOreMassConversion" => percentage_2
        } ->
          [
            high_temp: floor(high_temp - 273.15, 2),
            high_temp_transition_target: {to_module(target_1), 1 - percentage_2},
            high_temp_transition_target: {to_module(target_2), percentage_2}
          ]

        %{
          "highTemp" => high_temp,
          "highTempTransitionTarget" => target
        } ->
          [
            high_temp: floor(high_temp - 273.15, 2),
            high_temp_transition_target: to_module(target)
          ]

        _ ->
          []
      end,
      case element do
        %{
          "lowTemp" => low_temp,
          "lowTempTransitionTarget" => target_1,
          "lowTempTransitionOreId" => target_2,
          "lowTempTransitionOreMassConversion" => percentage_2
        } ->
          [
            low_temp: floor(low_temp - 273.15, 2),
            low_temp_transition_target: {to_module(target_1), 1 - percentage_2},
            low_temp_transition_target: {to_module(target_2), percentage_2}
          ]

        %{
          "lowTemp" => low_temp,
          "lowTempTransitionTarget" => target
        } ->
          [
            low_temp: floor(low_temp - 273.15, 2),
            low_temp_transition_target: to_module(target)
          ]

        _ ->
          []
      end,
      Keyword.take(
        [
          specific_heat_capacity: element["specificHeatCapacity"],
          thermal_conductivity: element["thermalConductivity"],
          mass_per_tile: element["defaultMass"],
          molar_mass: element["molarMass"],
          hardness: element["hardness"]
        ],
        fields
      )
    ])
  end

  def attributes_to_json(attributes) do
    attributes
    |> Enum.map(fn
      {:high_temp_transition_target, {element_module, _}} ->
        {:high_temp_transition_target, element_module.output(:link_name_icon)}

      {:high_temp_transition_target, element_module} ->
        {:high_temp_transition_target, element_module.output(:link_name_icon)}

      {:low_temp_transition_target, {element_module, _}} ->
        {:low_temp_transition_target, element_module.output(:link_name_icon)}

      {:low_temp_transition_target, element_module} ->
        {:low_temp_transition_target, element_module.output(:link_name_icon)}

      {field, value} ->
        {field, value}
    end)
    |> Enum.reduce(%{}, fn {field, value}, acc ->
      case Map.get(acc, field) do
        nil -> Map.put(acc, field, value)
        existed -> Map.put(acc, field, "#{existed} #{value}")
      end
    end)
  end

  defp to_module(element_id) do
    Module.concat(["Onicn.Elements", element_id])
  end

  def output(:html_attributes, element) do
    attributes = element.__attributes__()
    name = element |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()

    category = attributes[:category_name]

    cn_name = attributes[:cn_name]
    img = "/img/#{category}/#{name}.png"

    data =
      attributes
      |> Enum.filter(fn {field, _value} -> Map.has_key?(@available_fields, field) end)
      |> Enum.map(fn
        {field, {e, percentage}}
        when field in [:low_temp_transition_target, :high_temp_transition_target] ->
          {@available_fields[field],
           "#{e.output(:link_name_icon)} (#{floor(percentage * 100, 0)}%)"}

        {field, e} when field in [:low_temp_transition_target, :high_temp_transition_target] ->
          {@available_fields[field], e.output(:link_name_icon)}

        {field, value} ->
          case @available_fields[field] do
            {name, unit} ->
              {name, "#{value} #{unit}"}

            name ->
              {name, value}
          end
      end)

    :onicn
    |> :code.priv_dir()
    |> Path.join("templates/attributes.eex")
    |> EEx.eval_file(name: cn_name, img: img, data: data)
  end

  def output(:html_body, category_name, fields) do
    cols =
      Jason.encode!([
        %{field: "cn_name", title: "名称", sort: true}
        | Enum.map(fields, fn field ->
            case @available_fields[field] do
              {name, unit} ->
                %{field: field, title: "#{name}(#{unit})", sort: field in @sortable_fields}

              name ->
                %{field: field, title: name, sort: field in @sortable_fields}
            end
          end)
      ])

    %{
      container: ~s|<table id="element" lay-filter=""></table>|,
      script: ~s|
      layui.use(['element', 'table'], function() {
        var table = layui.table;
        table.render({
          elem: '#element',
          url: '/#{category_name}.json',
          page: false,
          cols: [#{cols}]
        });
      });|
    }
  end

  def generate_page(element_module, category_name) do
    name = element_module |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()
    cn_name = element_module.__attributes__()[:cn_name]

    temp_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("templates")

    nav =
      temp_path
      |> Path.join("nav.eex")
      |> EEx.eval_file(nav: category_name)

    footer =
      temp_path
      |> Path.join("footer.eex")
      |> EEx.eval_file(edit_link: element_module.output(:edit_link))

    contents = element_module.output(:html_content)
    attributes = element_module.output(:html_attributes)

    container = ~s"""
      <div class="layui-row layui-col-space30">
        <div class="layui-col-md8">#{contents}</div>
        <div class="layui-col-md4">#{attributes}</div>
      </div>
    """

    script = ~s|layui.use('element', function() {});|

    page =
      temp_path
      |> Path.join("index.eex")
      |> EEx.eval_file(
        title: cn_name,
        nav: nav,
        container: container,
        footer: footer,
        script: script
      )

    page_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("dist")
      |> Path.join("/#{category_name}/#{name}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end

  defp floor(f, 0) do
    f
    |> :erlang.float_to_binary(decimals: 0)
    |> :erlang.binary_to_integer()
  end

  defp floor(f, decimals) do
    f
    |> :erlang.float_to_binary(decimals: decimals)
    |> :erlang.binary_to_float()
  end
end
