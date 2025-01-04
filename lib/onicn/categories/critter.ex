alias Onicn.{Critters, Translation}

defmodule Onicn.Categories.Critter do
  use Onicn.Content

  @species [
    Critters.BeeSpecies,
    Critters.CrabSpecies,
    Critters.DivergentSpecies,
    Critters.DreckoSpecies,
    Critters.GlomSpecies,
    Critters.HatchSpecies,
    Critters.IceBellySpecies,
    Critters.LightBugSpecies,
    Critters.MoleSpecies,
    Critters.MooSpecies,
    Critters.OilfloaterSpecies,
    Critters.PacuSpecies,
    Critters.PuftSpecies,
    Critters.SealSpecies,
    Critters.SquirrelSpecies,
    Critters.StaterpillarSpecies,
    Critters.WoodDeerSpecies
  ]

  section "小动物状态信息" do
    """
    | 状态           | 效果                                                           | 条件                                       |
    | ------------- | ------------------------------------------------------------- | ----------------------------------------- |
    | 痛苦           | 代谢 -15%（对野生小动物）/代谢 -80%（对驯化小动物），繁殖速率 -100% | 幸福度为 -9 到 -1 时                        |
    | 郁闷           | 代谢 -15%（对野生小动物）/代谢 -80%（对驯化小动物）                | 幸福度为 -9 到 -1 时                        |
    | 满足           | 无影响                                                         | 幸福度为 0 到 3 时                          |
    | 快乐           | 繁殖速率 +900%（温顺时）                                         | 幸福度 >= 4                                |
    | 闲置           | 无影响                                                         | 享受生活，懂吗？                            |
    | 野性           | 野性 +5%，代谢 -75%，鳞片生长 -75%                               | 地图生成/打印门打印的动物                    |
    | 温顺           | 幸福度 -1                                                      | 通过打扮或喂鱼使野性降低到 0%                |
    | 打扮           | 幸福度 +5，野性 -55%/周期                                       | 被复制人在照料站照料                         |
    | 从喂食器进食    | 幸福度 +5，野性 -20%/周期                                       | 从喂鱼器进食                                |
    | 补水           | 幸福度 +5                                                      | 从小动物直饮器喝了咸乳                       |
    | 舒适           | 幸福度 +1                                                      | 小动物使用小动物公寓/水中城堡/飞行小动物公寓   |
    | 拥挤           | 每超出一只小动物，幸福度 -1                                      | 房间大小 < 动物需求                         |
    | 小幼崽         | 幸福度 +5，代谢 -90%                                            | 出生的前 5 个周期                           |
    | 年老           | 无影响                                                         | 寿命最后 5 周期                             |
    | 狭窄           | 繁殖度 -100%                                                   | 房间大小 < 动物 + 蛋需求                    |
    | 封闭           | 幸福度 -10，繁殖速率 -100%                                      | 房间或水域大小 < 1 个动物需求                |
    | 即将饿死       | 幸福度 -10，持续 10 周期后死亡                                   | 温顺的小动物卡路里减到 0                     |
    | 摇篮曲         | 孵化度 +400%                                                   | 复制人抱孵化器                              |
    | 受盛情款待      | 聚集度 +6%/周期，咸乳供给 +25%/周期                              | 释气海牛食用过释气草                         |
    """
  end

  defmacro __using__(critters) do
    quote do
      use Onicn.Content

      defmacro __using__(_attributes) do
        species =
          __MODULE__ |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()

        quote do
          def __attributes__ do
            name =
              __MODULE__ |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()

            Onicn.Categories.Critter.__properties__()
            |> Enum.find(fn attribute -> attribute[:name] == name end)
            |> Map.put(:species, unquote(species))
            |> Map.put(:cn_name, Translation.get!(name))
            |> case do
              %{name: "bee"} = attrs ->
                attrs
                |> Map.put(:baby_cn_name, Translation.get!("#{name}_baby"))

              %{base_lay_egg_cycles: _} = attrs ->
                attrs
                |> Map.put(:egg_cn_name, Translation.get!("#{name}_egg"))
                |> Map.put(:baby_cn_name, Translation.get!("#{name}_baby"))

              attrs ->
                attrs
            end
            |> Enum.into([])
          end

          def output(:html_attributes, common_properties) do
            icon = ~s|<i class="layui-icon layui-icon-subtraction"></i>|
            a = __attributes__()
            img = "/img/critters/#{a[:image_name]}.png"

            data =
              [
                hp: {"生命值", a[:hp]},
                age_max: {"寿命", "#{a[:age_max]} 周期"},
                temperature_min_liveable:
                  {"存活温度",
                   "#{a[:temperature_min_liveable]} #{icon} #{a[:temperature_max_liveable]} °C"},
                temperature_min_comfort:
                  {"舒适温度",
                   "#{a[:temperature_min_comfort]} #{icon} #{a[:temperature_max_comfort]} °C"},
                space_required: {"需求空间", "#{a[:space_required]}"},
                decor: {"装饰度", "#{a[:decor]}（#{a[:decor_radius]}格）"},
                death_drop_item:
                  {"死亡掉落", "#{a[:death_drop_item]} #{a[:death_drop_item_amount]} 千克"},
                base_incubation_rate_per_cycle:
                  {"自然孵化度", "#{a[:base_incubation_rate_per_cycle]}% 每周期"},
                base_lay_egg_cycles: {"产蛋周期", "#{a[:base_lay_egg_cycles]} 周期"},
                kcal_per_cycle: {"每周期消耗卡路里", "#{a[:kcal_per_cycle]}"},
                kcal_stomach_size: {"最大卡路里", "#{a[:kcal_stomach_size]}"}
              ]
              |> Enum.reject(fn {key, _value} -> Keyword.has_key?(common_properties, key) end)
              |> Enum.filter(fn {key, _value} -> Keyword.has_key?(a, key) end)
              |> Enum.map(fn {_key, value} -> value end)

            :onicn
            |> :code.priv_dir()
            |> Path.join("templates/attributes.eex")
            |> EEx.eval_file(name: a[:cn_name], img: img, data: data)
          end

          def output(:link_name_icon) do
            a = __attributes__()

            ~s"""
            <a href="/critters/#{a[:species]}">
              <img src="/img/critters/#{a[:image_name]}.png" style="weight:16px;height:16px;">
              #{a[:cn_name]}
            </a>
            """
          end

          def output(:link_baby_name_icon) do
            a = __attributes__()

            if a[:baby_cn_name] do
              ~s"""
              <a href="/critters/#{a[:species]}">
                <img src="/img/critters/baby_#{a[:image_name]}.png" style="weight:16px;height:16px;">
                #{a[:baby_cn_name]}
              </a>
              """
            end
          end

          def output(:link_egg_name_icon) do
            a = __attributes__()

            if a[:egg_cn_name] do
              ~s"""
              <a href="/critters/#{a[:species]}">
                <img src="/img/critters/egg_#{a[:image_name]}.png" style="weight:16px;height:16px;">
                #{a[:egg_cn_name]}
              </a>
              """
            end
          end
        end
      end

      def __attributes__, do: []

      def __critters__ do
        unquote(critters)
      end

      def output(:edit_link) do
        name = __MODULE__ |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()
        "https://github.com/onicn/oni-cn.com/blob/main/lib/onicn/critters/#{name}.ex"
      end

      def output(:html_attributes, []), do: ""

      def output(:html_attributes, a) do
        icon = ~s|<i class="layui-icon layui-icon-subtraction"></i>|
        img = ""

        data =
          [
            hp: {"生命值", a[:hp]},
            age_max: {"寿命", "#{a[:age_max]} 周期"},
            temperature_min_liveable:
              {"存活温度",
               "#{a[:temperature_min_liveable]} #{icon} #{a[:temperature_max_liveable]} °C"},
            temperature_min_comfort:
              {"舒适温度", "#{a[:temperature_min_comfort]} #{icon} #{a[:temperature_max_comfort]} °C"},
            space_required: {"需求空间", "#{a[:space_required]}"},
            decor: {"装饰度", "#{a[:decor]}（#{a[:decor_radius]}格）"},
            death_drop_item: {"死亡掉落", "#{a[:death_drop_item]} #{a[:death_drop_item_amount]} 千克"},
            base_incubation_rate_per_cycle:
              {"自然孵化度", "#{a[:base_incubation_rate_per_cycle]}% 每周期"},
            base_lay_egg_cycles: {"产蛋周期", "#{a[:base_lay_egg_cycles]} 周期"},
            kcal_per_cycle: {"每周期消耗卡路里", "#{a[:kcal_per_cycle]}"},
            kcal_stomach_size: {"最大卡路里", "#{a[:kcal_stomach_size]}"}
          ]
          |> Enum.filter(fn {key, _value} -> Keyword.has_key?(a, key) end)
          |> Enum.map(fn {_key, value} -> value end)

        result =
          :onicn
          |> :code.priv_dir()
          |> Path.join("templates/attributes.eex")
          |> EEx.eval_file(name: "共同属性", img: img, data: data)

        String.replace(result, ~s|<img src="" style="text-align: center">|, "")
      end
    end
  end

  def __name__, do: "critter"
  def __cn_name__, do: "动物"

  def __species__ do
    @species
  end

  properties =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/critter.yaml")
    |> YamlElixir.read_from_file!()
    |> Enum.map(
      &Map.new(&1, fn
        {key, value} -> {String.to_atom(key), value}
      end)
    )
    |> Macro.escape()

  def __properties__ do
    unquote(properties)
  end

  def generate_pages do
    @species
    |> Enum.map(&Task.async(fn -> do_generate_page(&1) end))
    |> Enum.each(&Task.await(&1, :infinity))
  end

  def delete_if_not_both_exist(a, key1, key2) do
    if Keyword.has_key?(a, key1) and Keyword.has_key?(a, key2) do
      a
    else
      Keyword.drop(a, [key1, key2])
    end
  end

  def get_common_attributes(module) do
    if Enum.count(module.__critters__()) == 1 do
      []
    else
      properties =
        module.__critters__()
        |> Enum.map(fn critter ->
          critter |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()
        end)
        |> Enum.map(fn critter ->
          Onicn.Categories.Critter.__properties__()
          |> Enum.find(fn attribute -> attribute[:name] == critter end)
        end)

      a =
        List.first(properties)
        |> Enum.filter(fn property ->
          {k, v} = property

          Enum.all?(properties, fn critter_properties ->
            Map.has_key?(critter_properties, k) and critter_properties[k] == v
          end)
        end)

      a = delete_if_not_both_exist(a, :decor, :decor_radius)
      a = delete_if_not_both_exist(a, :temperature_min_liveable, :temperature_max_liveable)
      delete_if_not_both_exist(a, :temperature_min_comfort, :temperature_max_comfort)
    end
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
      |> EEx.eval_file(nav: "critter")

    contents = module.output(:html_content)

    common_attributes = get_common_attributes(module)
    attributes = module.output(:html_attributes, common_attributes)

    attributes =
      attributes <>
        (module.__critters__()
         |> Enum.map(fn critter ->
           critter.output(:html_attributes, common_attributes)
         end)
         |> Enum.join())

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
      |> Path.join("/critters/#{name}/")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end

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
    icon = ~s|<i class="layui-icon layui-icon-subtraction"></i>|

    @species
    |> Enum.map(& &1.__critters__())
    |> Enum.concat()
    |> Enum.map(fn module ->
      a = module.__attributes__()

      %{
        cn_name: module.output(:link_name_icon),
        baby: module.output(:link_baby_name_icon),
        egg: module.output(:link_egg_name_icon),
        hp: a[:hp],
        age_max: a[:age_max] || "∞",
        temperature_liveable:
          "#{a[:temperature_min_liveable]} #{icon} #{a[:temperature_max_liveable]}",
        temperature_comfort:
          "#{a[:temperature_min_comfort]} #{icon} #{a[:temperature_max_comfort]}"
      }
    end)
  end
end
