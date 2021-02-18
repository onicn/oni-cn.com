defmodule Onicn.Buildings.GasConduitTemperatureSensor do
  use Onicn.Categories.Building
  
  section "简介" do
    "气体管道温度传感器能够检测气体管道内的气体温度，并输出自动化信号。"
    "玩家能够设定气体管道温度传感器的温度范围为大于某阈值或小于某阈值。"
    "当气体管道内的气体温度符合该条件时，传感器输出自动化绿色信号T；否则输出自动化红色信号F。"
  end

  section "用途" do
    "和气体开关阀配合，仅当气体加热完成或冷却完成时允许气体通过。"
  end
end
