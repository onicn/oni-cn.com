defmodule Onicn.Buildings.LogicTemperatureSensor do
  use Onicn.Categories.Building

  section "简介" do
    "温度传感器检测当前格子的温度，如果与设定的数值范围相同则输出绿色信号。可以放在液体或气体中。"
  end

  section "用途" do
    "用于控制环境温度，防止建筑/植物过热。"
  end
end
