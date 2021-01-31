defmodule Onicn.Categories.Gas do
  @fields [
    :category,
    :low_temp,
    :low_temp_transition_target,
    :specific_heat_capacity,
    :thermal_conductivity,
    :molar_mass
  ]

  @elements :onicn
            |> :code.priv_dir()
            |> Path.join("data/gas.yaml")
            |> YamlElixir.read_from_file!()
            |> Map.get("elements")

  defmacro __using__(attributes) do
    element_id = __CALLER__.module |> to_string() |> String.split(".") |> List.last()

    attributes =
      @elements
      |> Enum.find(fn e -> e["elementId"] === element_id end)
      |> Onicn.Categories.Element.parse(@fields)
      |> Keyword.merge(attributes)
      |> Keyword.put(:nav, __MODULE__)

    quote do
      use Onicn.Content

      def __attributes__ do
        unquote(attributes)
      end

      def output(:html_attributes) do
        Onicn.Categories.Element.output(:html_attributes, __MODULE__)
      end

      def output(:link_name_icon) do
        ~s|<a href="/gas/#{Macro.underscore(unquote(element_id))}/">#{
          unquote(attributes[:cn_name])
        }</a>|
      end
    end
  end

  def output(:json_elements) do
    @elements
    |> Enum.filter(fn %{"elementId" => element_id} ->
      module = Module.concat(["Onicn.Elements", element_id])
      function_exported?(module, :__attributes__, 0) && module.__attributes__[:nav] === __MODULE__
    end)
    |> Enum.map(fn %{"elementId" => element_id} ->
      module = Module.concat(["Onicn.Elements", element_id])

      module.__attributes__
      |> Enum.filter(fn {field, _} -> field in @fields end)
      |> Keyword.put(:cn_name, module.output(:link_name_icon))
      |> Onicn.Categories.Element.attributes_to_json()
    end)
  end

  def output(:html_table) do
    %{
      container: ~s|<table id="element" lay-filter=""></table>|,
      script: ~s|
        layui.use(['element', 'table'], function() {
          var table = layui.table;
          table.render({
            elem: '#element',
            url: '/gas.json',
            page: false,
            cols: [
              [
                { field: 'cn_name', title: '名称', sort: true, fixed: 'left' },
                { field: 'thermal_conductivity', title: '导热率', sort: true  },
                { field: 'specific_heat_capacity', title: '比热容', sort: true },
                { field: 'low_temp', title: '低温相变温度', sort: true },
                { field: 'low_temp_transition_target', title: '低温相变产物'},
                { field: 'molar_mass', title: '摩尔质量', sort: true }
              ]
            ]
          });
        });|
    }
  end

  def output(:link_name_icon) do
    ~s|<a href="/gas/">气体</a>|
  end

  def generate_pages do
    @elements
    |> Enum.map(fn %{"elementId" => element_id} ->
      module = Module.concat(["Onicn.Elements", element_id])

      (function_exported?(module, :__attributes__, 0) &&
         module.__attributes__[:nav] === __MODULE__ &&
         module) || nil
    end)
    |> Enum.reject(&is_nil/1)
    |> Enum.each(&generate_element_page(&1))
  end

  def generate_element_page(element_module) do
    name = element_module |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()

    temp_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("templates")

    nav =
      temp_path
      |> Path.join("nav.eex")
      |> EEx.eval_file(nav: "gas")

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
      |> Path.join("/gas/#{name}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end

  def __fields__, do: @fields
end
