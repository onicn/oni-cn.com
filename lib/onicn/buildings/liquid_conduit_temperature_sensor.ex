defmodule Onicn.Buildings.LiquidConduitTemperatureSensor do
  use Onicn.Categories.Building

  summary "液体管道温度传感器能够检测液体管道内的液体温度，并输出自动化信号。"
  summary "玩家能够设定液体管道温度传感器的温度范围为大于某阈值或小于某阈值。"
  summary "当液体管道内的液体温度符合该条件时，传感器输出自动化绿色信号T；否则输出自动化红色信号F。"

  usage "和液体开关阀配合，仅当液体加热完成或冷却完成时允许液体通过。"

end
