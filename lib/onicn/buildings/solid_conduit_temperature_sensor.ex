defmodule Onicn.Buildings.SolidConduitTemperatureSensor do
  use Onicn.Categories.Building

  section "简介" do
    "运输轨道温度传感器能够检测运输轨道内的固体温度，并输出自动化信号。"
    "玩家能够设定运输轨道温度传感器的温度范围为大于某阈值或小于某阈值。"
    "当运输轨道内的固体温度符合该条件时，传感器输出自动化绿色信号T；否则输出自动化红色信号F。"
  end

  section "用途" do
    "和轨道开关阀配合，仅当固体加热完成或冷却完成时允许固体通过。"
  end
end
