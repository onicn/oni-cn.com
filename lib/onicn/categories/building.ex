alias Onicn.Translation

defmodule Onicn.Categories.Building do
  buildings =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/building.yaml")
    |> YamlElixir.read_from_file!()
    |> Enum.map(
      &Map.new(&1, fn
        {key, value} when key in ["name", "category"] ->
          {String.to_atom(key), String.to_atom(value)}

        {key, value} ->
          {String.to_atom(key), value}
      end)
    )
    |> Macro.escape()

  defmacro __using__(_options) do
    name =
      __CALLER__.module
      |> Module.split()
      |> List.last()
      |> Macro.underscore()
      |> String.to_atom()

    quote do
      use Onicn.Content

      def __attributes__ do
        Onicn.Categories.Building.__buildings__()
        |> Enum.find(fn building -> building[:name] === unquote(name) end)
        |> Map.put(:cn_name, Translation.get(unquote(name)))
        |> Enum.into([])
      end

      def output(:html_attributes) do
        Onicn.Categories.Building.output(:html_attributes, __MODULE__)
      end

      def output(:link_name_icon) do
        a = __attributes__()

        ~s|<a href="/buildings/#{a[:name]}">
          <img src="/img/buildings/#{a[:image_name]}.png" style="height:16px;"> #{a[:cn_name]}
        </a>|
      end

      def output(:edit_link) do
        a = __attributes__()
        "https://github.com/onicn/oni-cn.com/blob/main/lib/onicn/buildings/#{a[:name]}.ex"
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
      equipment: "站台",
      automation: "自动化",
      conveyance: "运输",
      rocketry: "火箭",
      hep: "辐射"
    ]
  end

  def __buildings__ do
    unquote(buildings)
  end

  def __building_modules__ do
    case :persistent_term.get(:__building_modules__, nil) do
      nil ->
        data = do_building_modules()
        :persistent_term.put(:__building_modules__, data)
        data

      data ->
        data
    end
  end

  defp do_building_modules do
    __buildings__()
    |> Enum.map(fn %{name: name} ->
      ["Onicn.Buildings", Macro.camelize(to_string(name))]
      |> Module.concat()
      |> Code.ensure_compiled()
      |> case do
        {:module, module} -> module
        {:error, :nofile} -> nil
      end
    end)
    |> Enum.reject(&is_nil/1)
  end

  def __name__, do: "building"
  def __cn_name__, do: "建筑"

  def output(:html_body) do
    buildings =
      __building_modules__()
      |> Enum.map(fn module -> module.__attributes__() end)
      |> Enum.group_by(&Keyword.get(&1, :category))

    grouped_buildings =
      Enum.map(__building_categories__(), fn {name, cn_name} ->
        {name, cn_name, Map.get(buildings, name, [])}
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

  def output(:html_attributes, module) do
    a = module.__attributes__()
    img = "/img/buildings/#{a[:image_name]}.png"

    data = [
      {"装饰度", "#{a[:base_decor] || 0} (#{a[:base_decor_radius]} 格)"},
      {"占用空间", "宽 #{a[:width_in_cells]} 格，高 #{a[:height_in_cells]} 格"},
      {"建造时间", "#{a[:construction_time]} 秒"},
      {"工业器械", (a[:is_industrial_machinery] && "是") || "否"},
      {"会被淹没", (a[:floodable] && "是") || "否"},
      {"会被掩埋", (a[:entombable] && "是") || "否"},
      {"会过热", (a[:overheatable] && "是") || "否"}
      | Enum.concat([
          if(a[:overheatable], do: [{"过热温度", "#{a[:overheat_temperature]} °C"}], else: []),
          if(a[:generator_wattage_rating] > 0,
            do: [{"电力生产", "#{a[:generator_wattage_rating]} W"}],
            else: []
          ),
          if(a[:power_consume], do: [{"电力消耗", "#{a[:power_consume]} W"}], else: []),
          if(a[:heat_generate] > 0, do: [{"产热", "#{a[:heat_generate]} kDTU/s"}], else: [])
        ])
    ]

    :onicn
    |> :code.priv_dir()
    |> Path.join("templates/attributes.eex")
    |> EEx.eval_file(name: a[:cn_name], img: img, data: data)
  end

  def generate_pages do
    __building_modules__()
    |> Enum.map(&Task.async(fn -> do_generate_page(&1) end))
    |> Enum.each(&Task.await(&1, :infinity))
  end

  def do_generate_page(module) do
    a = module.__attributes__()

    temp_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("templates")

    nav =
      temp_path
      |> Path.join("nav.eex")
      |> EEx.eval_file(nav: "building")

    contents = module.output(:html_content)
    attributes = module.output(:html_attributes)

    container = ~s"""
      <div class="layui-row layui-col-space30">
        <div class="layui-col-md8">#{contents}</div>
        <div class="layui-col-md4">#{attributes}</div>
      </div>
    """

    footer =
      temp_path
      |> Path.join("footer.eex")
      |> EEx.eval_file(edit_link: module.output(:edit_link))

    script = ~s|layui.use('element', function() {});|

    page =
      temp_path
      |> Path.join("index.eex")
      |> EEx.eval_file(
        title: a[:cn_name],
        nav: nav,
        container: container,
        footer: footer,
        script: script
      )

    page_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("dist")
      |> Path.join("/buildings/#{a[:name]}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end
end
