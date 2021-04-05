defmodule Onicn.Buildings.LogicGateMultiplexer do
  use Onicn.Categories.Building

  section "简介" do
    "信号选择器可以在左边四个输入信号中选择一个信号输出。另外两个黄色输入口决定输出的信号为那一条。"
  end

  section "小技巧" do
    "可以与其它大多数建筑重叠建造。"
    "应用信号线组时，会先对所有输入进行或操作，对结果信号作为正常输入信号。例如输入为红红绿绿，相当于输入了一个绿色信号。"
  end
end
