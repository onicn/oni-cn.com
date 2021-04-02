defmodule Onicn.Buildings.LogicGateDemultiplexer do
  use Onicn.Categories.Building

  section "简介" do
    "信号分配器可以将输入信号分配到四条输出线路的其中一条，其它输出口输出红色信号。下面两个黄色输入口决定输出线路。"
  end

  section "小技巧" do
    "可以与其它大多数建筑重叠建造。"
    "应用信号线组时，会先对所有输入进行或操作，对结果信号作为正常输入信号。例如输入为红红绿绿，相当于输入了一个绿色信号。"
  end
end
