alias Onicn.Plants

defmodule Onicn.Categories.Plant do
  @plants [
    Plants.BasicFabricPlant,
    Plants.BasicForagePlantPlanted,
    Plants.BasicSingleHarvestPlant,
    Plants.BeanPlant,
    Plants.BulbPlant,
    Plants.CactusPlant,
    Plants.ColdBreather,
    Plants.ColdWheat,
    Plants.EvilFlower,
    Plants.ForestForagePlantPlanted,
    Plants.ForestTree,
    Plants.GasGrass,
    Plants.LeafyPlant,
    Plants.MushroomPlant,
    Plants.Oxyfern,
    Plants.PrickleFlower,
    Plants.PrickleGrass,
    Plants.SaltPlant,
    Plants.SeaLettuce,
    Plants.SpiceVine,
    Plants.SwampLily
  ]

  defmacro __using__(attributes) do
    quote do
      def __attributes__ do
        name = __MODULE__ |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()

        properties =
          unquote(__MODULE__).__properties__()
          |> Enum.find(fn attribute -> attribute[:name] == name end)
          |> Enum.into([])

        unquote(attributes)
        |> Keyword.put(:name, name)
        |> Keyword.merge(properties)
      end

      def output(:html_attributes) do
        icon = ~s|<i class="layui-icon layui-icon-subtraction"></i>|
        a = __attributes__()
        img = "/img/plants/#{a[:name]}.png"

        data = [
          {"装饰度", "#{a[:decor]}（#{a[:decor_radius]}格）"},
          {"生长周期", a[:life_cycle_second] / 600},
          {"温度范围", "#{a[:min_temp]} #{icon} #{a[:max_temp]} °C"}
        ]

        :onicn
        |> :code.priv_dir()
        |> Path.join("templates/attributes.eex")
        |> EEx.eval_file(name: a[:cn_name], img: img, data: data)
      end

      def output(:link_name_icon) do
        a = __attributes__()

        ~s|<a href="/plants/#{a[:name]}">
          <img src="/img/plants/#{a[:name]}.png" style="weight:16px;height:16px;">
          #{a[:cn_name]}
        </a>|
      end

      def output(:link_seed_name_icon) do
        a = __attributes__()

        ~s|<a href="/plants/#{a[:name]}">
          <img src="/img/plants/#{a[:seed]}.png" style="weight:16px;height:16px;">
          #{a[:seed_cn_name]}
        </a>|
      end
    end
  end

  properties =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/plant.ex")
    |> Code.eval_file()
    |> elem(0)
    |> Macro.escape()

  def __properties__ do
    unquote(properties)
  end

  def __plants__ do
    @plants
  end

  def generate_pages do
    @plants
    |> Enum.map(&Task.async(fn -> do_generate_page(&1) end))
    |> Enum.each(&Task.await(&1, :infinity))
  end

  def do_generate_page(module) do
    name = module |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()

    temp_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("templates")

    nav =
      temp_path
      |> Path.join("nav.eex")
      |> EEx.eval_file(nav: "plant")

    contents = ""
    attributes = module.output(:html_attributes)

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
      |> Path.join("/plants/#{name}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end

  def output(:html_body) do
    container = ~s|
      <div class="layui-row">
        <div class="layui-col-md12">
          <table id="plant" lay-filter=""></table>
        </div>
      </div>|

    cols =
      Jason.encode!([
        %{field: "cn_name", title: "名称"},
        %{field: "seed", title: "种子"},
        %{field: "life_cycle", title: "生长周期"},
        %{field: "temperature", title: "温度范围（°C）"}
      ])

    script = ~s|
      layui.use('element', function() {});
      layui.use(['element', 'table'], function() {
        var table = layui.table;
        table.render({
          elem: '#plant',
          url: '/plant.json',
          page: false,
          cols: [#{cols}]
        });
      });|

    %{
      container: container,
      script: script
    }
  end

  def output(:json_elements) do
    icon = ~s|<i class="layui-icon layui-icon-subtraction"></i>|

    Enum.map(@plants, fn module ->
      a = module.__attributes__()

      %{
        cn_name: module.output(:link_name_icon),
        seed: module.output(:link_seed_name_icon),
        life_cycle: (a[:life_cycle_second] === 0 && "") || a[:life_cycle_second] / 600,
        temperature: "#{a[:min_temp]} #{icon} #{a[:max_temp]}"
      }
    end)
  end
end
