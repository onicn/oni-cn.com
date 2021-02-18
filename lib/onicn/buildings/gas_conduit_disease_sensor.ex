defmodule Onicn.Buildings.GasConduitDiseaseSensor do
  use Onicn.Categories.Building

  section "简介" do
    "气体管道病菌传感器能够检测气体管道的病菌数量，并输出自动化控制信号。"
    "玩家可以设定病菌传感器的检测范围为大于某阈值或小于某阈值。"
    "当气体管道内的病菌数量满足该条件时，传感器输出自动化绿色信号，否则输出自动化红色信号。"
  end

  section "用途" do
    "区分含菌的气体和不含菌的气体。"
  end
end
