alias Onicn.Critters

defmodule Onicn.Categories.Critter do
  use Onicn.Content

  section "小动物状态信息" do
    """
    | 状态         | 效果                               | 条件                             |
    | ------------ | ---------------------------------- | -------------------------------- |
    | 空闲         | 无影响                             | 享受生活，懂吗？                 |
    | 野性         | 野性 +5%，代谢 +25%，鳞片生长 -75% | 地图生成的动物/打印门动物        |
    | 温顺         | 幸福度 -1，代谢 +100%              | 通过打扮或喂鱼使野性降低到 0%    |
    | 快乐         | 繁殖度 900%（温顺时）              | 幸福度 > 0                       |
    | 从喂食器进食 | 幸福度 +2，野性 -20%               | 从喂食器进食（持续 1 周期）      |
    | 封闭         | 代谢 20%，繁殖度 0%                | 房间大小 < 1 个动物需求          |
    | 狭窄         | 繁殖度 -100%                       | 房间大小 < 动物 + 蛋需求         |
    | 过度拥挤     | 幸福度 -5                          | 房间大小 < 动物需求              |
    | 闷闷不乐     | 代谢 -80%                          | 幸福度 < 0                       |
    | 溺水         | 闷闷不乐                           | 被水淹没 （80 秒后死亡）         |
    | 挣扎         | 繁殖度会增长，但不产蛋             | 离水之鱼                         |
    | 小幼崽       | 幸福度 +5，代谢 -90%               | 出生的前 5 个周期                |
    | 年老         | 无影响                             | 寿命最后 5 周期                  |
    | 饥饿         | 闷闷不乐                           | 卡路里减到 0，持续 10 周期后死亡 |
    | 摇篮曲       | 孵化度 500%                        | 复制人抱孵化器                   |
    """
  end

  defmacro __using__(critteries) do
    quote do
      defmacro __using__(attributes) do
        quote do
          def __attributes__ do
            name =
              __MODULE__ |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()

            properties =
              Onicn.Categories.Critter.__properties__()
              |> Enum.find(fn attribute -> attribute[:name] == name end)
              |> Enum.into([])

            unquote(attributes)
            |> Keyword.put(:name, name)
            |> Keyword.merge(properties)
          end

          def output(:link_name_icon) do
            a = __attributes__()

            ~s|<a href="/critter/">
              <img src="/img/critters/#{a[:name]}.png" style="weight:16px;height:16px;">
              #{a[:cn_name]}
              </a>
            |
          end

          def output(:link_baby_name_icon) do
            a = __attributes__()

            if a[:baby] do
              ~s|<a href="/critter/">
                <img src="/img/critters/#{a[:baby]}.png" style="weight:16px;height:16px;">
                #{a[:baby_cn_name]}
                </a>
              |
            end
          end

          def output(:link_egg_name_icon) do
            a = __attributes__()

            if a[:egg] do
              ~s|<a href="/critter/">
                <img src="/img/critters/#{a[:egg]}.png" style="weight:16px;height:16px;">
                #{a[:egg_cn_name]}
                </a>
              |
            end
          end
        end
      end

      def __critteries__ do
        unquote(critteries)
      end
    end
  end

  properties =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/critter.ex")
    |> Code.eval_file()
    |> elem(0)
    |> Macro.escape()

  def __properties__ do
    unquote(properties)
  end

  @species [
    Critters.HatchSpecies,
    Critters.PacuSpecies,
    Critters.SquirrelSpecies,
    Critters.OilFloaterSpecies,
    Critters.DreckoSpecies,
    Critters.MoleSpecies,
    Critters.CrabSpecies,
    Critters.PuftSpecies,
    Critters.LightBugSpecies,
    Critters.MooSpecies,
    Critters.GlomSpecies
  ]

  def output(:html_body) do
    contents = output(:html_content)

    container = ~s|
      <div class="layui-row">
        <div class="layui-col-md12">
          #{contents}
          <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>小动物列表</legend>
          </fieldset>
          <table id="critter" lay-filter=""></table>
        </div>
      </div>|

    cols =
      Jason.encode!([
        %{field: "cn_name", title: "名称"},
        %{field: "baby", title: "幼崽"},
        %{field: "egg", title: "蛋"},
        %{field: "hp", title: "生命值"},
        %{field: "age_max", title: "寿命（周期）"},
        %{field: "temperature_liveable", title: "存活温度（°C）"},
        %{field: "temperature_comfort", title: "舒适温度（°C）"}
      ])

    script = ~s|
      layui.use('element', function() {});
      layui.use(['element', 'table'], function() {
        var table = layui.table;
        table.render({
          elem: '#critter',
          url: '/critter.json',
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
    @species
    |> Enum.map(& &1.__critteries__)
    |> Enum.concat()
    |> Enum.map(fn module ->
      a = module.__attributes__()

      %{
        cn_name: module.output(:link_name_icon),
        baby: module.output(:link_baby_name_icon),
        egg: module.output(:link_egg_name_icon),
        hp: a[:hp],
        age_max: (a[:age_max] === 0 && "∞") || a[:age_max],
        temperature_liveable: "#{a[:temperature_min_liveable]} - #{a[:temperature_max_liveable]}",
        temperature_comfort: "#{a[:temperature_min_comfort]} - #{a[:temperature_max_comfort]}"
      }
    end)
  end
end
