defmodule Onicn.Buildings.EggIncubator do
  use Onicn.Categories.Building

  summary "孵化器能够孵化小动物蛋。"
  summary "拥有小动物放牧技能的复制人能够唱摇篮曲来加速小动物蛋孵化。"
  summary "孵化的小动物幼体会等候复制人来转移到小动物放生点或释放鱼类。如复制人过长时间不来运送，孵化器会自动释放幼体到地上。"

  usage "孵化小动物蛋。"

  tips "由于蛋的摇篮曲状态可以持续一个周期，在持续期间即使孵化器不通电蛋也可以保持高孵化速度，因此可以通过在摇篮曲状态期间关闭孵化器电源的方式来节约电力和降低发热量。"

end
