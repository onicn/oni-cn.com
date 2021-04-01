defmodule Onicn.Buildings.SolidTransferArm do
  use Onicn.Categories.Building

  section "简介" do
    "自动清扫器可以在以自身为中心9x9的范围内搬运物体。"
    "可以为建筑装填原材料，或者往存储箱，自动装载器或冰箱等存储建筑装填对应的物资。"
    "遵守建筑优先级规则，会把低优先级存储建筑里的物体搬运到高优先级的存储建筑。"
  end

  section "用途" do
    "自动化运输系统的一部分，可以节省很多人力操作。"
  end

  section "小技巧" do
    "只有在搬运时消耗电力。"
    "与被搬运的物体没有热量交换。"
    "每次最多可以移动一吨物体。"
    "清扫范围穿透计算和光照类似，可以穿过气动门移动物体。"
    "用自动清扫器，自动卸物箱，自动清扫器，自动卸物箱这样的连续组合可以长距离搬运物体，运输量是运输轨道的25倍。"
    "虽然一个建筑可以占用很多格子，但是搬运生效的目标格子通常只有一个，通常是摆放蓝图时鼠标所在的格子。"
  end
end
