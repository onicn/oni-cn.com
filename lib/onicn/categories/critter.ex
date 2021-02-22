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
            unquote(attributes)
          end
        end
      end

      def __critteries__ do
        unquote(critteries)
      end
    end
  end

  @species [
    Critters.GlomSpecies,
    Critters.HatchSpecies,
    Critters.PacuSpecies,
    Critters.SquirrelSpecies,
    Critters.OilFloaterSpecies,
    Critters.DreckoSpecies,
    Critters.MoleSpecies,
    Critters.CrabSpecies,
    Critters.PuftSpecies,
    Critters.LightBugSpecies,
    Critters.MooSpecies
  ]
end
