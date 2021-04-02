defmodule Onicn.Buildings.LogicElementSensorGas do
  use Onicn.Categories.Building
  section "简介" do
    "气体元素传感器检测当前格子的气体种类，如果与设定的气体相同则输出绿色信号。在液体中时始终输出红色信号。"
  end
  section "小技巧" do
    "可以用于在检测到某种气体时开关气泵或碳素脱离器等建筑。由于建造位置不能和其它建筑重叠，因此控制不是很精确，摆放要利用气体的分层特点。"
  end
end
