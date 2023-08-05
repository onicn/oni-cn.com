alias Onicn.{Foods, Translation}

defmodule Onicn.Categories.Food do
  defmacro __using__(_options) do
    quote do
      use Onicn.Content

      def __attributes__ do
        name =
          __MODULE__
          |> to_string()
          |> String.split(".")
          |> List.last()
          |> Macro.underscore()
          |> String.to_atom()

        unquote(__MODULE__).__properties__()
        |> Enum.find(fn data -> data[:name] == to_string(name) end)
        |> Map.put(:name, name)
        |> Map.put(:cn_name, Translation.get!(name))
        |> Enum.to_list()
      end

      def output(:html_attributes) do
        a = __attributes__()
        img = "/img/foods/#{a[:image_name]}.png"
        q = ["恶心", "糟糕", "低劣", "标准", "良好", "优秀", "杰出", "极佳"]

        data =
          [
            calories: {"卡路里", "#{a[:calories]} 千卡"},
            quality: {"品质", "#{Enum.at(q, a[:quality] + 1)}（#{a[:quality]}）"},
            stale_time: {"腐败时间", "#{a[:stale_time]} 周期"},
            rot_temperature: {"腐败减缓(0.2x)", "< #{a[:rot_temperature]} °C"},
            preserve_temperature: {"停止腐败", "< #{a[:preserve_temperature]} °C"}
          ]
          |> Enum.filter(fn {key, _value} -> Keyword.has_key?(a, key) end)
          |> Enum.map(fn {_key, value} -> value end)

        data =
          if Keyword.has_key?(a, :stale_time) do
            data
          else
            data ++ {"腐败时间", "不腐败"}
          end

        :onicn
        |> :code.priv_dir()
        |> Path.join("templates/attributes.eex")
        |> EEx.eval_file(name: a[:cn_name], img: img, data: data)
      end

      def output(:link_name_icon) do
        a = __attributes__()

        ~s"""
        <a href="/foods/#{a[:name]}">
          <img src="/img/foods/#{a[:image_name]}.png" style="weight:16px;height:16px;">
          #{a[:cn_name]}
        </a>
        """
      end

      def output(:edit_link) do
        a = __attributes__()
        "https://github.com/onicn/oni-cn.com/blob/main/lib/onicn/foods/#{a[:name]}.ex"
      end
    end
  end

  properties =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/food.yaml")
    |> YamlElixir.read_from_file!()
    |> Enum.map(&Map.new(&1, fn {key, value} -> {String.to_atom(key), value} end))
    |> Macro.escape()

  def __properties__ do
    unquote(properties)
  end

  def __name__, do: "food"
  def __cn_name__, do: "食物"

  def __foods__ do
    __properties__()
    |> Enum.map(&Map.get(&1, :name))
    |> Enum.map(&Module.concat(Foods, Macro.camelize(&1)))
    |> Enum.filter(&Code.ensure_loaded?/1)
  end

  def generate_pages do
    __foods__()
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
      |> EEx.eval_file(nav: "food")

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
      |> Path.join("/foods/#{name}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end

  def output(:html_body) do
    container = ~s"""
      <div class="layui-row">
        <div class="layui-col-md12">
          <table id="food" lay-filter=""></table>
        </div>
      </div>
    """

    cols =
      Jason.encode!([
        %{field: "cn_name", title: "名称"},
        %{field: "calories", title: "卡路里（千卡）", sort: true},
        %{field: "quality", title: "品质", sort: true},
        %{field: "stale_time", title: "腐败时间（周期）", sort: true}
      ])

    script = ~s"""
      layui.use('element', function() {});
      layui.use(['element', 'table'], function() {
        var table = layui.table;
        table.render({
          elem: '#food',
          url: '/food.json',
          page: false,
          cols: [#{cols}]
        });
      });
    """

    %{
      container: container,
      script: script
    }
  end

  def output(:json_elements) do
    Enum.map(__foods__(), fn module ->
      a = module.__attributes__()

      %{
        cn_name: module.output(:link_name_icon),
        calories: (a[:calories] === 0 && "") || a[:calories],
        quality: a[:quality],
        stale_time: a[:stale_time]
      }
    end)
  end
end
