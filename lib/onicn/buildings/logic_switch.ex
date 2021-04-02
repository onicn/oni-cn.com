defmodule Onicn.Buildings.LogicSwitch do
  use Onicn.Categories.Building

  section "简介" do
    "信号开关可以输出红色或绿色信号，用信号线与建筑相连可以控制建筑的启用和禁用。"
  end

  section "小技巧" do
    "玩家可以控制输出信号，不需要复制人操作。"
    "气压传感器，液压传感器，病菌传感器通过切换阈值可以有类似的作用，更灵活和复杂。"
  end
end
