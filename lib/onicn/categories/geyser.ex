alias Onicn.Geysers

defmodule Onicn.Categories.Geyser do
  @geysers [
    Geysers.GeyserGenericBigVolcano,
    Geysers.GeyserGenericChlorineGas,
    Geysers.GeyserGenericFilthyWater,
    Geysers.GeyserGenericHotCo2,
    Geysers.GeyserGenericHotHydrogen,
    Geysers.GeyserGenericHotPo2,
    Geysers.GeyserGenericHotSteam,
    Geysers.GeyserGenericHotWater,
    Geysers.GeyserGenericLiquidCo2,
    Geysers.GeyserGenericMethane,
    Geysers.GeyserGenericMoltenCopper,
    Geysers.GeyserGenericMoltenGold,
    Geysers.GeyserGenericMoltenIron,
    Geysers.GeyserGenericOilDrip,
    Geysers.GeyserGenericSaltWater,
    Geysers.GeyserGenericSlimyPo2,
    Geysers.GeyserGenericSlushWater,
    Geysers.GeyserGenericSmallVolcano,
    Geysers.GeyserGenericSteam
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
        a = __attributes__()
        img = "/img/geysers/#{a[:name]}.png"

        data = [
          {"产物", a[:produced_element].output(:link_name_icon)},
          {"温度", "#{a[:temperature]} °C"}
        ]

        :onicn
        |> :code.priv_dir()
        |> Path.join("templates/attributes.eex")
        |> EEx.eval_file(name: a[:cn_name], img: img, data: data)
      end

      def output(:link_name_icon) do
        a = __attributes__()

        ~s|<a href="/geysers/#{a[:name]}">
          <img src="/img/geysers/#{a[:name]}.png" style="weight:16px;height:16px;">
          #{a[:cn_name]}
        </a>|
      end

      def output(:edit_link) do
        a = __attributes__()
        "https://github.com/onicn/oni-cn.com/blob/main/lib/onicn/geysers/#{a[:name]}.ex"
      end
    end
  end

  properties =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/geysers.ex")
    |> Code.eval_file()
    |> elem(0)
    |> Macro.escape()

  def __properties__ do
    unquote(properties)
  end

  def __geysers__ do
    @geysers
  end

  def generate_pages do
    @geysers
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
      |> EEx.eval_file(nav: "geyser")

    contents = module.output(:html_content)
    attributes = module.output(:html_attributes)

    container = ~s|
      <div class="layui-row layui-col-space30">
        <div class="layui-col-md8">#{contents}</div>
        <div class="layui-col-md4">#{attributes}</div>
      </div>|

    footer =
      temp_path
      |> Path.join("footer.eex")
      |> EEx.eval_file(edit_link: module.output(:edit_link))

    script = ~s|layui.use('element', function() {});|

    page =
      temp_path
      |> Path.join("index.eex")
      |> EEx.eval_file(nav: nav, container: container, footer: footer, script: script)

    page_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("dist")
      |> Path.join("/geysers/#{name}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end

  def output(:html_body) do
    container = ~s|
      <div class="layui-row">
        <div class="layui-col-md12">
          <table id="geyser" lay-filter=""></table>
        </div>
      </div>|

    cols =
      Jason.encode!([
        %{field: "cn_name", title: "名称"},
        %{field: "produced_element", title: "产物"},
        %{field: "temperature", title: "温度（°C）"}
      ])

    script = ~s|
      layui.use('element', function() {});
      layui.use(['element', 'table'], function() {
        var table = layui.table;
        table.render({
          elem: '#geyser',
          url: '/geyser.json',
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
    Enum.map(@geysers, fn module ->
      a = module.__attributes__()

      %{
        cn_name: module.output(:link_name_icon),
        produced_element: a[:produced_element].output(:link_name_icon),
        temperature: a[:temperature]
      }
    end)
  end
end
