defmodule Onicn.Buildings.LogicElementSensorLiquid do
  use Onicn.Categories.Building

  section "简介" do
    "液体元素传感器检测当前格子的液体种类，如果与设定的液体相同则输出绿色信号。不在液体中时始终输出红色信号。"
  end

  section "小技巧" do
    "可以用于在检测到某种液体时开关液泵等建筑。由于建造位置不能和其它建筑重叠，因此控制不是很精确。"
    "因为液体混合的几率比气体要少，液压传感器更为常用，例如在盐水泉不喷发的时候关闭液泵。"
  end
end
