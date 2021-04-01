defmodule Onicn.Buildings.SolidConduitDiseaseSensor do
  use Onicn.Categories.Building

  section "简介" do
    "运输轨道病菌传感器能够检测运输轨道的病菌数量，并输出自动化控制信号。"
    "玩家可以设定病菌传感器的检测范围为大于某阈值或小于某阈值。"
    "当运输轨道内的病菌数量满足该条件时，传感器输出自动化绿色信号，否则输出自动化红色信号。"
  end

  section "用途" do
    "区分含菌的固体和不含菌的固体。"
  end
end
