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
      use Onicn.Content

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

        data =
          [
            decor: {"装饰度", "#{a[:decor]}（#{a[:decor_radius]}格）"},
            max_cycles: {"生长周期", a[:max_cycles]},
            min_temp: {"温度范围", "#{a[:min_temp]} #{icon} #{a[:max_temp]} °C"},
            pressure_warning_low:
              {"气压范围", "#{a[:pressure_warning_low]} #{icon} #{a[:pressure_warning_high]} 千克"},
            produce_crop_cn: {"产出", a[:produce_crop_cn]},
            produce_crop_num: {"产量", a[:produce_crop_num]},
            seed_cn: {"种子", a[:seed_cn]},
            can_drown: {"会溺死", (a[:can_drown] && "是") || "否"},
            can_tinker: {"农业种植", (a[:can_tinker] && "是") || "否"},
            hanging: {"倒挂生长", (a[:hanging] && "是") || "否"}
          ]
          |> Enum.filter(fn {key, _value} -> Keyword.has_key?(a, key) end)
          |> Enum.map(fn {_key, value} -> value end)

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

        case a[:seed] do
          nil ->
            ""

          seed when is_binary(seed) ->
            ~s|<a href="/plants/#{a[:name]}">
              <img src="/img/plants/#{a[:seed]}.png" style="weight:16px;height:16px;">
              #{a[:seed_cn]}
            </a>|

          seed when is_atom(seed) ->
            seed.output(:link_name_icon)
        end
      end

      def output(:edit_link) do
        a = __attributes__()
        "https://github.com/onicn/oni-cn.com/blob/main/lib/onicn/plants/#{a[:name]}.ex"
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

  def __name__, do: "plant"
  def __cn_name__, do: "植物"

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
    cn_name = module.__attributes__()[:cn_name]

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
      |> Path.join("/plants/#{name}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end

  def output(:html_body) do
    container = ~s"""
      <div class="layui-row">
        <div class="layui-col-md12">
          <table id="plant" lay-filter=""></table>
        </div>
      </div>
    """

    cols =
      Jason.encode!([
        %{field: "cn_name", title: "名称"},
        %{field: "seed", title: "种子"},
        %{field: "max_cycles", title: "种植生长周期"},
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
        max_cycles: (Keyword.has_key?(a, :max_cycles) && a[:max_cycles]) || "",
        temperature: "#{a[:min_temp]} #{icon} #{a[:max_temp]}"
      }
    end)
  end
end
