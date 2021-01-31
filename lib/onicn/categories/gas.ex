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
      def __attributes__ do
        unquote(attributes)
      end

      def output(:html_attributes) do
        Onicn.Categories.Element.output(:html_attributes, __MODULE__)
      end

      def output(:link_name_icon) do
        ~s|<a href="/gas/#{Macro.underscore(unquote(element_id))}/">#{unquote(attributes[:cn_name])}</a>|
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

  def __fields__, do: @fields
end
