defmodule Onicn.Buildings.LogicPressureSensorGas do
  use Onicn.Categories.Building
  section "简介" do
    "气压传感器检测当前格子的气压值，如果与设定的数值范围相同则输出绿色信号。需要建造在气体中，在液体中气压始终为0。"
  end
  section "小技巧" do
    "可以控制气泵在气压高于500克的时候开启，可以避免管道抽不满而降低用电效率。"
    "可以用于避免环境气压过大。"
  end
end
