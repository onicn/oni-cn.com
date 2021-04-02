defmodule Onicn.Buildings.LogicPressureSensorLiquid do
  use Onicn.Categories.Building

  section "简介" do
    "液压传感器检测当前格子的液压值，如果与设定的数值范围相同则输出绿色信号。需要建造在液体中，在气体中液压始终为0。"
  end

  section "小技巧" do
    "可以控制液泵在液压高于10千克的时候开启，可以避免管道抽不满而降低用电效率。"
    "可以用于在水池快溢出时关闭排液口。"
    "可以用作信号开关。"
  end
end
