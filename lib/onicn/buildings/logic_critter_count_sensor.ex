defmodule Onicn.Buildings.LogicCritterCountSensor do
  use Onicn.Categories.Building

  section "简介" do
    "小动物传感器检测房间内的小动物和蛋的数量，在符合设定的数量区间时输出绿色信号。"
    "可以选择只计小动物数量或只计蛋的数量或两个相加。"
  end
end
