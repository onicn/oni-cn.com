alias Onicn.Categories.Gas
alias Onicn.Elements.{Oxygen, ToxicSand}

defmodule Onicn.Elements.ContaminatedOxygen do
  use Gas,
    cn_name: "污染氧"

  summary "污染氧是#{link(Oxygen)}之外的另一种可呼吸的#{link(Gas)}，常见于沼泽区。污染氧通常含有粘液肺病菌，需要小心处理。"
  summary "污染氧会引起接触的食物腐败速率加倍。"
  summary "不含病菌的污染氧可以安全呼吸，复制人不会得病，但会造成 肺部不适 的状态，增加 30% 氧气消耗。"

  usage "空气净化器能够将污染氧转化为氧气。100 克/秒 污染氧 + 133.33 克/秒 沙子 或 浮土 = 90 克/秒 氧气 + 143.33 克/秒 粘土。"
  usage "喷浮飞鱼和贵族飞鱼能够呼吸污染氧，排泄出菌泥。菌泥可以进一步转化为藻类。"
  usage "将污染氧冷却至 -184.96 摄氏度（冰点-2摄氏度）会变为液态氧，再将液态氧加热至 -180.96 摄氏度（冰点+2摄氏度）会转变为氧气。"

  production "沼泽区中存在大量污染氧。"
  production "在气压小于 1800 克时，污染土和菌泥会持续释放出污染氧。"
  production "在气压小于 1800 克时，并且接触到氧气或者污染氧时，污染水会持续释放出污染氧。"
  production "疫病章鱼会持续排泄出污染氧。"
  production "高温污染氧喷孔和菌染氧喷孔会定期排放出污染氧。"

  production [only: :spaced_out], "升华站能够将#{link(ToxicSand)}转化为污染氧。1000 克/秒 污染土 = 660 克/秒 污染氧"
end
