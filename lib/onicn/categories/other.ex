alias Onicn.Others

defmodule Onicn.Categories.Other do
  @others [
    Others.Alpha,
    Others.AtmoSuit,
    Others.BabyCrabShell,
    Others.BasicFabric,
    Others.Beta,
    Others.CoolVest,
    Others.CrabShell,
    Others.EggShell,
    Others.FunkyVest,
    Others.Gamma,
    Others.GasGrassHarvested,
    Others.GeneShufflerRecharge,
    Others.JetSuit,
    Others.ResearchDataBank,
    Others.RotPile,
    Others.SwampLilyFlower,
    Others.TableSalt,
    Others.WarmVest,
    Others.Wood,
    Others.AdvancedCure,
    Others.Antihistamine,
    Others.BasicBooster,
    Others.BasicCure,
    Others.IntermediateBooster,
    Others.IntermediateCure
  ]

  defmacro __using__(attributes) do
    quote do
      def __attributes__ do
        name = __MODULE__ |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()
        Keyword.put(unquote(attributes), :name, name)
      end

      def output(:html_attributes) do
        a = __attributes__()
        img = "/img/others/#{a[:name]}.png"

        data = []

        :onicn
        |> :code.priv_dir()
        |> Path.join("templates/attributes.eex")
        |> EEx.eval_file(name: a[:cn_name], img: img, data: data)
      end

      def output(:link_name_icon) do
        a = __attributes__()

        ~s|<a href="/others/#{a[:name]}">
          <img src="/img/others/#{a[:name]}.png" style="weight:16px;height:16px;">
          #{a[:cn_name]}
        </a>|
      end
    end
  end

  def __others__ do
    @others
  end

  def generate_pages do
    @others
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
      |> EEx.eval_file(nav: "other")

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
      |> Path.join("/others/#{name}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end
end
