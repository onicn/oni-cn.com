defmodule Onicn.Elements.Oxygen do
  use Onicn.Categories.Gas,
    cn_name: "氧气",
    category: "可呼吸气体"

  summary("氧气是一种#{Onicn.Categories.Gas.output(:link_name_icon)}，是游戏中最重要的资源之一。复制人必须呼吸氧气才能生存。")

  usage(
    "复制人每秒通常需要 100 克氧气（大口呼吸者特质需要 200 克/秒，潜水员之肺特质需要 75 克/秒）。在正常气压下复制人会正常呼吸，如果气压过低（小于 50 克）或者环境气体不能呼吸，复制人可以短时间憋气。长时间无法呼吸的复制人会窒息而死。"
  )

  usage([only: :spaced_out], "氧气面罩存放柜需要氧气来给氧气面罩充气。")
  usage("气压服存放柜需要氧气来给气压服充气。")
  usage("喷气服存放柜需要氧气来给喷气服充气。")
  usage([only: :basic], "望远镜需要氧气才能正常工作。")

  usage(
    "氧石精炼炉能够将氧气和金合成氧石。600 克/秒 氧气 + 3 克/秒 #{Onicn.Elements.Gold.output(:link_name_icon)} = 600 克/秒 #{
      Onicn.Elements.OxyRock.output(:link_name_icon)
    }。"
  )

  usage("贵族飞鱼和厚壳飞鱼能够呼吸氧气，排泄出#{Onicn.Elements.OxyRock.output(:link_name_icon)}。")

  production("地图中存在天然的氧石，会挥发出氧气。特别的，在起始的打印舱附近必定存在 5 格氧石。")
  production("氧气扩散器能够将藻类转化为氧气。550 克/秒 藻类 = 500 克/秒 氧气。")
  production("电解器能够电解水制氧。1 千克/秒 水 = 888 克/秒 氧气 + 112 克/秒 氢气。")
  production("铁锈脱氧机能够用铁锈和盐制氧。750 克/秒 铁锈 + 250 克/秒 盐 = 570 克/秒 氧气 + 30 克/秒 氯气 + 400 克/秒 铁矿。")

  production(
    "藻类箱能够将藻类和水转化为氧气和污染水。30 克/秒 藻类 + 300 克/秒 水 = 40 克/秒 氧气 + 290.33 克/秒 污染水。如果处于二氧化碳环境，藻类箱还可以除去 333.33 毫克/秒 二氧化碳。"
  )

  production("氧齿蕨能够将二氧化碳转化为氧气。")
  production("空气净化器能将污染氧转化为氧气。100 克/秒 污染氧 + 133.33 克/秒 沙子 或 浮土 = 90 克/秒 氧气 + 143.33 克/秒 粘土。")
end
