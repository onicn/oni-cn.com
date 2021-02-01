alias Onicn.Categories.Gas
alias Onicn.Elements.{Polypropylene, Water, Oxygen}

defmodule Onicn.Elements.Hydrogen do
  use Gas, cn_name: "氢气"

  summary "氢气是一种不可呼吸的#{link(Gas)}。可用于发电，也可用于制冷。常见于腐蚀区。"
  summary [only: :spaced_out], "暴露在氢气中的复制人会造成 眼部刺激 的异常状态，运动 -2"

  usage "氢气是一种发电能源。氢气发电机可以燃烧氢气发电。100 克/秒 氢气 = 800 瓦 电力。"

  usage "氢气的比热容是 2.400 DTU/克/摄氏度，是常温气体中最大的。这使它成为冰息萝卜制冷的最佳选择。将一个密封房间充满氢气，在房间中种植冰息萝卜，再将需要冷却的液体/气体的管道通过该房间，可以有效冷却管道中的液体/气体。如有需要，可以在房间中进一步使用液温调节器和温度调节器。"

  usage "将氢气输入反熵热量中和器可以强力制冷。10 克/秒 氢气 = -80000 DTU/秒。"
  usage "毛鳞壁虎在氢气环境中会生长芦苇纤维鳞片，滑鳞壁虎在氢气环境中会生长#{link(Polypropylene)}。"
  usage "储存在氢气环境中的食物不会腐烂。 "

  production "腐蚀区有天然氢气存在。"
  production "电解器能将#{link(Water)}电解成#{link(Oxygen)}和氢气。1 千克/秒 水 = 888 克/秒 氧气 + 112 克/秒 氢气。"
  production "氢气喷孔会定期喷发出氢气。 "
end
