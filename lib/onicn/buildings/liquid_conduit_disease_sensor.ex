defmodule Onicn.Buildings.LiquidConduitDiseaseSensor do
  use Onicn.Categories.Building

  summary "液体管道病菌传感器能够检测液体管道的病菌数量，并输出自动化控制信号。"
  summary "玩家可以设定病菌传感器的检测范围为大于某阈值或小于某阈值。"
  summary "当液体管道内的病菌数量满足该条件时，传感器输出自动化绿色信号，否则输出自动化红色信号。"

  usage "区分含菌的液体和不含菌的液体。"
end
