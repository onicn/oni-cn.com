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

      elements =
        :onicn
        |> :code.priv_dir()
        |> Path.join("data/#{name}.yaml")
        |> YamlElixir.read_from_file!()
        |> Map.get("elements")
        |> Macro.escape()

      defmacro __using__(attributes) do
        category_name = unquote(name)
        category_cn_name = unquote(cn_name)
        category_fields = unquote(fields)
        category_elements = Macro.escape(unquote(elements))
        element_id = __CALLER__.module |> to_string() |> String.split(".") |> List.last()

        quote do
          use Onicn.Content

          def __attributes__ do
            unquote(category_elements)
            |> Enum.find(fn e -> e["elementId"] === unquote(element_id) end)
            |> Onicn.Categories.Element.parse(unquote(category_fields))
            |> Keyword.merge(unquote(attributes))
            |> Keyword.put(:nav, unquote(category_name))
          end

          def output(:html_attributes) do
            Onicn.Categories.Element.output(:html_attributes, __MODULE__)
          end

          def output(:link_name_icon) do
            ~s|<a href="/#{unquote(category_name)}/#{Macro.underscore(unquote(element_id))}/">#{
              unquote(attributes[:cn_name])
            }</a>|
          end
        end
      end

      def __fields__ do
        unquote(fields)
      end

      def __element_modules__ do
        unquote(elements)
        |> Enum.map(fn %{"elementId" => element_id} ->
          module = Module.concat(["Onicn.Elements", element_id])
          (function_exported?(module, :__attributes__, 0) && module) || nil
        end)
        |> Enum.reject(&is_nil/1)
      end

      def generate_pages do
        Enum.each(__element_modules__(), fn module ->
          Onicn.Categories.Element.generate_page(module, unquote(name))
        end)
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

      def output(:html_table) do
        Onicn.Categories.Element.output(:html_table, unquote(name), unquote(fields))
      end
    end
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
            high_temp: Float.floor(high_temp - 273.15, 2),
            high_temp_transition_target: {to_module(target_1), 1 - percentage_2},
            high_temp_transition_target: {to_module(target_2), percentage_2}
          ]

        %{
          "highTemp" => high_temp,
          "highTempTransitionTarget" => target
        } ->
          [
            high_temp: Float.floor(high_temp - 273.15, 2),
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
            low_temp: Float.floor(low_temp - 273.15, 2),
            low_temp_transition_target: {to_module(target_1), 1 - percentage_2},
            low_temp_transition_target: {to_module(target_2), percentage_2}
          ]

        %{
          "lowTemp" => low_temp,
          "lowTempTransitionTarget" => target
        } ->
          [
            low_temp: Float.floor(low_temp - 273.15, 2),
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

    category =
      attributes[:nav] |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()

    cn_name = attributes[:cn_name]
    img = "/img/#{category}/#{name}.png"

    data =
      attributes
      |> Enum.filter(fn {field, _value} -> Map.has_key?(@available_fields, field) end)
      |> Enum.map(fn
        {field, {e, percentage}}
        when field in [:low_temp_transition_target, :high_temp_transition_target] ->
          {@available_fields[field],
           "#{e.output(:link_name_icon)} (#{Float.floor(percentage * 100, 2)}%)"}

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

  def output(:html_table, category_name, fields) do
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

    temp_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("templates")

    nav =
      temp_path
      |> Path.join("nav.eex")
      |> EEx.eval_file(nav: category_name)

    contents = element_module.output(:html_content)
    attributes = element_module.output(:html_attributes)

    container = ~s|
      <div class="layui-row layui-col-space30">
        <div class="layui-col-md8">#{contents}</div>
        <div class="layui-col-md4">#{attributes}</div>
      </div>|

    script = ~s|layui.use('element', function() {});|

    page =
      temp_path
      |> Path.join("index.eex")
      |> EEx.eval_file(nav: nav, container: container, script: script)

    page_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("dist")
      |> Path.join("/#{category_name}/#{name}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end
end
