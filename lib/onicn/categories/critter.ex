alias Onicn.Critters

defmodule Onicn.Categories.Critter do
  use Onicn.Content

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

  section "小动物状态信息" do
    """
    | 状态         | 效果                               | 条件                              |
    | ------------ | ---------------------------------- | --------------------------------- |
    | 空闲         | 无影响                             | 享受生活，懂吗？                  |
    | 野性         | 野性 +5%，代谢 +25%，鳞片生长 -75% | 地图生成的动物/打印门动物         |
    | 温顺         | 幸福度 -1，代谢 +100%              | 通过打扮或喂鱼使野性降低到 0%     |
    | 快乐         | 繁殖度 900%（温顺时）              | 幸福度 > 0                        |
    | 从喂食器进食 | 幸福度 +2，野性 -20%               | 从喂食器进食（持续 1 周期）       |
    | 封闭         | 代谢 20%，繁殖度 0%                | 房间大小 < 1 个动物需求           |
    | 狭窄         | 繁殖度 -100%                       | 房间大小 < 动物 + 蛋需求          |
    | 过度拥挤     | 幸福度 -5                          | 房间大小 < 动物需求               |
    | 闷闷不乐     | 代谢 -80%                          | 幸福度 < 0                        |
    | 溺水         | 闷闷不乐                           | 被水淹没（80 秒后死亡）           |
    | 挣扎         | 繁殖度会增长，但不产蛋             | 离水之鱼                          |
    | 小幼崽       | 幸福度 +5，代谢 -90%               | 出生的前 5 个周期                 |
    | 年老         | 无影响                             | 寿命最后 5 周期                   |
    | 饥饿         | 闷闷不乐                           | 卡路里减到 0（持续 10 周期后死亡）|
    | 摇篮曲       | 孵化度 500%                        | 复制人抱孵化器                    |
    """
  end

  defmacro __using__(critters) do
    quote do
      use Onicn.Content
      defmacro __using__(attributes) do
        species =
          __MODULE__ |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()

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
            |> Keyword.put(:species, unquote(species))
            |> Keyword.merge(properties)
          end

          defp append_data_if_no_key(properties, a, data, key, data_item) do
            if Keyword.has_key?(properties, key) or !Keyword.has_key?(a, key), do: data, else: data ++ [data_item]
          end

          def output(:html_attributes, common_properties) do
            icon = ~s|<i class="layui-icon layui-icon-subtraction"></i>|
            a = __attributes__()
            img = "/img/critters/#{a[:name]}.png"
            
            data = append_data_if_no_key(common_properties, a, [], :hp, {"生命值", a[:hp]})
            data = append_data_if_no_key(common_properties, a, data, :age_max, {"寿命", "#{a[:age_max]} 周期"})
            data = append_data_if_no_key(common_properties, a, data, :temperature_min_liveable, {"存活温度", "#{a[:temperature_min_liveable]} #{icon} #{a[:temperature_max_liveable]} °C"})
            data = append_data_if_no_key(common_properties, a, data, :temperature_min_comfort, {"舒适温度", "#{a[:temperature_min_comfort]} #{icon} #{a[:temperature_max_comfort]} °C"})
            data = append_data_if_no_key(common_properties, a, data, :space_required, {"需求空间", "#{a[:space_required]}"})
            data = append_data_if_no_key(common_properties, a, data, :decor, {"装饰度", "#{a[:decor]}（#{a[:decor_radius]}格）"})
            data = append_data_if_no_key(common_properties, a, data, :death_drop_item, {"死亡掉落", "#{a[:death_drop_item]} #{a[:death_drop_item_amount]} 千克"})
            data = append_data_if_no_key(common_properties, a, data, :base_incubation_rate_per_cycle, {"自然孵化时长", "#{a[:base_incubation_rate_per_cycle]} 周期"})
            data = append_data_if_no_key(common_properties, a, data, :base_lay_egg_cycles, {"产蛋周期", "#{a[:base_lay_egg_cycles]} 周期"})
            data = append_data_if_no_key(common_properties, a, data, :k_calories_per_cycle, {"每周期消耗卡路里", "#{a[:k_calories_per_cycle]}"})
            data = append_data_if_no_key(common_properties, a, data, :k_calories_stomach_size, {"最大卡路里", "#{a[:k_calories_stomach_size]}"})

            :onicn
            |> :code.priv_dir()
            |> Path.join("templates/attributes.eex")
            |> EEx.eval_file(name: a[:cn_name], img: img, data: data)
          end

          def output(:link_name_icon) do
            a = __attributes__()

            ~s"""
            <a href="/critters/#{a[:species]}">
              <img src="/img/critters/#{a[:name]}.png" style="weight:16px;height:16px;">
              #{a[:cn_name]}
            </a>
            """
          end

          def output(:link_baby_name_icon) do
            a = __attributes__()

            if a[:baby] do
              ~s"""
              <a href="/critters/#{a[:species]}">
                <img src="/img/critters/#{a[:baby]}.png" style="weight:16px;height:16px;">
                #{a[:baby_cn_name]}
              </a>
              """
            end
          end

          def output(:link_egg_name_icon) do
            a = __attributes__()

            if a[:egg] do
              ~s"""
              <a href="/critters/#{a[:species]}">
                <img src="/img/critters/#{a[:egg]}.png" style="weight:16px;height:16px;">
                #{a[:egg_cn_name]}
              </a>
              """
            end
          end
        end
      end

      def __attributes__ do
        unquote(critters)
        |> List.first()
        |> Kernel.then(fn module -> module.__attributes__() end)
      end

      def __critters__ do
        unquote(critters)
      end

      def output(:edit_link) do
        name = __MODULE__ |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()
        "https://github.com/onicn/oni-cn.com/blob/main/lib/onicn/critters/#{name}.ex"
      end

      defp append_data_if_has_key(properties, data, key, data_item) do
        if Keyword.has_key?(properties, key), do: data ++ [data_item], else: data
      end
      
      def output(:html_attributes, a) do
        if Enum.count(a) == 0 do
            ""
        else
            icon = ~s|<i class="layui-icon layui-icon-subtraction"></i>|
            img = ""
            data = append_data_if_has_key(a, [], :hp, {"生命值", a[:hp]})
            data = append_data_if_has_key(a, data, :age_max, {"寿命", "#{a[:age_max]} 周期"})
            data = append_data_if_has_key(a, data, :temperature_min_liveable, {"存活温度", "#{a[:temperature_min_liveable]} #{icon} #{a[:temperature_max_liveable]} °C"})
            data = append_data_if_has_key(a, data, :temperature_min_comfort, {"舒适温度", "#{a[:temperature_min_comfort]} #{icon} #{a[:temperature_max_comfort]} °C"})
            data = append_data_if_has_key(a, data, :space_required, {"需求空间", "#{a[:space_required]}"})
            data = append_data_if_has_key(a, data, :decor, {"装饰度", "#{a[:decor]}（#{a[:decor_radius]}格）"})
            data = append_data_if_has_key(a, data, :death_drop_item, {"死亡掉落", "#{a[:death_drop_item]} #{a[:death_drop_item_amount]} 千克"})
            data = append_data_if_has_key(a, data, :base_incubation_rate_per_cycle, {"自然孵化时长", "#{a[:base_incubation_rate_per_cycle]} 周期"})
            data = append_data_if_has_key(a, data, :base_lay_egg_cycles, {"产蛋周期", "#{a[:base_lay_egg_cycles]} 周期"})
            data = append_data_if_has_key(a, data, :k_calories_per_cycle, {"每周期消耗卡路里", "#{a[:k_calories_per_cycle]}"})
            data = append_data_if_has_key(a, data, :k_calories_stomach_size, {"最大卡路里", "#{a[:k_calories_stomach_size]}"})
    
            result = :onicn
            |> :code.priv_dir()
            |> Path.join("templates/attributes.eex")
            |> EEx.eval_file(name: "共同属性", img: img, data: data)
    
            String.replace(result, ~s|<img src="" style="text-align: center">|, "")
        end
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
    |> Path.join("data/critter.ex")
    |> Code.eval_file()
    |> elem(0)
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
    if Keyword.has_key?(a, key1) != Keyword.has_key?(a, key2) do
        a |> Keyword.delete(key1) |> Keyword.delete(key2)
    else
        a
    end
  end

  def get_common_attributes(module) do
    if Enum.count(module.__critters__()) == 1 do
        []
    else
        properties = module.__critters__() |> Enum.map(fn critter ->
            critter |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()
          end) |> Enum.map(fn critter ->
            Onicn.Categories.Critter.__properties__() |> Enum.find(fn attribute -> attribute[:name] == critter end)
        end)
        
        a = List.first(properties) |> Enum.filter(fn property ->
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

    attributes = attributes <>
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
    |> Enum.map(& &1.__critters__)
    |> Enum.concat()
    |> Enum.map(fn module ->
      a = module.__attributes__()

      %{
        cn_name: module.output(:link_name_icon),
        baby: module.output(:link_baby_name_icon),
        egg: module.output(:link_egg_name_icon),
        hp: a[:hp],
        age_max: (a[:age_max] === 0 && "∞") || a[:age_max],
        temperature_liveable:
          "#{a[:temperature_min_liveable]} #{icon} #{a[:temperature_max_liveable]}",
        temperature_comfort:
          "#{a[:temperature_min_comfort]} #{icon} #{a[:temperature_max_comfort]}"
      }
    end)
  end
end
