defmodule Onicn.Buildings.LogicDuplicantSensor do
  use Onicn.Categories.Building

  section "简介" do
    "复制人运动传感器检测范围内是否有复制人，有的话输出绿色信号。"
  end

  section "小技巧" do
    "可以配合灯类建筑只在复制人在附近的时候开灯，节约电力。"
  end
end
