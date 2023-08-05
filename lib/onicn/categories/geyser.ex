alias Onicn.{Geysers, Translation}

defmodule Onicn.Categories.Geyser do
  defmacro __using__(_attributes) do
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

      def to_percentage(number) do
        percent = number * 100.0

        if Float.floor(percent) == percent do
          (percent |> floor |> Integer.to_string()) <> "%"
        else
          ((number * 100.0) |> Float.round(1) |> Float.to_string()) <> "%"
        end
      end

      def output(:html_attributes) do
        a = __attributes__()
        img = "/img/geysers/#{a[:image_name]}.png"
        icon = ~s|<i class="layui-icon layui-icon-subtraction"></i>|
        produce_module = Module.concat(Onicn.Elements, Macro.camelize(a[:produced_element]))

        data = [
          {"产物", produce_module.output(:link_name_icon)},
          {"温度", "#{a[:temperature]} °C"},
          {"平均产率", "#{a[:min_rate_per_cycle]} #{icon} #{a[:max_rate_per_cycle]} 千克/周期"},
          {"喷发期时长", "#{a[:min_iteration_length]} #{icon} #{a[:max_iteration_length]} 秒"},
          {"喷发期占比",
           "#{to_percentage(a[:min_iteration_percent])} #{icon} #{to_percentage(a[:max_iteration_percent])} "},
          {"活跃期时长", "#{a[:min_year_length]} #{icon} #{a[:max_year_length]} 周期"},
          {"活跃期占比",
           "#{to_percentage(a[:min_year_percent])} #{icon} #{to_percentage(a[:max_year_percent])} "}
        ]

        :onicn
        |> :code.priv_dir()
        |> Path.join("templates/attributes.eex")
        |> EEx.eval_file(name: a[:cn_name], img: img, data: data)
      end

      def output(:link_name_icon) do
        a = __attributes__()

        ~s|<a href="/geysers/#{a[:name]}">
          <img src="/img/geysers/#{a[:image_name]}.png" style="weight:16px;height:16px;">
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
    |> Path.join("data/geyser.yaml")
    |> YamlElixir.read_from_file!()
    |> Enum.map(&Map.new(&1, fn {key, value} -> {String.to_atom(key), value} end))
    |> Macro.escape()

  def __properties__ do
    unquote(properties)
  end

  def __name__, do: "geyser"
  def __cn_name__, do: "间歇泉"

  def __geysers__ do
    __properties__()
    |> Enum.map(&Map.get(&1, :name))
    |> Enum.map(&Module.concat(Geysers, Macro.camelize(&1)))
    |> Enum.filter(&Code.ensure_loaded?/1)
  end

  def generate_pages do
    __geysers__()
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
      |> EEx.eval_file(nav: "geyser")

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
      |> Path.join("/geysers/#{name}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end

  def output(:html_body) do
    container = ~s"""
      <div class="layui-row">
        <div class="layui-col-md12">
          <table id="geyser" lay-filter=""></table>
        </div>
      </div>
    """

    cols =
      Jason.encode!([
        %{field: "cn_name", title: "名称"},
        %{field: "produced_element", title: "产物"},
        %{field: "temperature", title: "温度（°C）"},
        %{field: "rate_per_cycle", title: "平均产率（千克/周期）"},
        %{field: "iteration_length", title: "喷发期时长（秒）"},
        %{field: "iteration_percent", title: "喷发期占比"},
        %{field: "year_length", title: "活跃期时长（周期）"}
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
    Enum.map(__geysers__(), fn module ->
      a = module.__attributes__()
      produce_module = Module.concat(Onicn.Elements, Macro.camelize(a[:produced_element]))
      icon = ~s|<i class="layui-icon layui-icon-subtraction"></i>|

      %{
        cn_name: module.output(:link_name_icon),
        produced_element: produce_module.output(:link_name_icon),
        temperature: a[:temperature],
        rate_per_cycle: "#{a[:min_rate_per_cycle]} #{icon} #{a[:max_rate_per_cycle]}",
        iteration_length: "#{a[:min_iteration_length]} #{icon} #{a[:max_iteration_length]}",
        iteration_percent:
          "#{module.to_percentage(a[:min_iteration_percent])} #{icon} #{module.to_percentage(a[:max_iteration_percent])}",
        year_length: "#{a[:min_year_length]} #{icon} #{a[:max_year_length]}"
      }
    end)
  end
end
