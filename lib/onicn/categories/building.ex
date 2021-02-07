defmodule Onicn.Categories.Building do
  buildings =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/buildings.ex")
    |> Code.eval_file()
    |> elem(0)
    |> Macro.escape()

  defmacro __using__(_options) do
    name = __CALLER__.module |> to_string() |> String.split(".") |> List.last()

    quote do
      def __attributes__ do
        Onicn.Categories.Building.__buildings__()
        |> Enum.find(fn building -> building[:tag] === unquote(name) end)
      end

      def output(:html_attributes) do
        __attributes__()[:cn_name]
      end

      def output(:link_name_icon) do
        path = "/buildings/#{Macro.underscore(unquote(name))}"

        ~s|<a href="#{path}">
          <img src="/img#{path}.png" style="height:16px;">
          #{__attributes__()[:name]}
        </a>|
      end
    end
  end

  def __building_categories__ do
    [
      base: "基地",
      oxygen: "氧气",
      power: "电力",
      food: "食物",
      plumbing: "液体",
      hvac: "气体",
      refining: "精炼",
      medical: "医疗",
      furniture: "家具",
      utilities: "实用",
      automation: "自动化",
      conveyance: "运输",
      rocketry: "火箭"
    ]
  end

  def __buildings__ do
    unquote(buildings)
  end

  def __building_modules__ do
    __buildings__()
    |> Enum.map(fn %{tag: tag} ->
      module = Module.concat(["Onicn.Buildings", tag])
      (function_exported?(module, :__attributes__, 0) && module) || nil
    end)
    |> Enum.reject(&is_nil/1)
  end

  def output(:html_body) do
    buildings = Enum.group_by(__buildings__(), &Map.get(&1, :category))

    grouped_buildings =
      Enum.map(__building_categories__(), fn {name, cn_name} ->
        {name, cn_name, buildings[name]}
      end)

    container =
      :onicn
      |> :code.priv_dir()
      |> Path.join("templates/building.eex")
      |> EEx.eval_file(grouped_buildings: grouped_buildings)

    %{
      container: container,
      script: ~s|layui.use('element', function() {});|
    }
  end
end
