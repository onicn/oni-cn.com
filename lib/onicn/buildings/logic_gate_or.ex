defmodule Onicn.Buildings.LogicGateOR do
  use Onicn.Categories.Building
  section "简介" do
    "或门在两个输入信号至少有一个绿色信号时输出绿色信号，只有两个输入都为红色信号时输出红色信号。"
  end
  section "小技巧" do
    "可以与其它大多数建筑重叠建造。"
    "有一个没有输入输出的空格子可以自由通过其它自动化线。"
    "应用信号线组时分别对每位或，例如第一个输入是红红绿绿，第二个输入是红绿红绿，输出为红绿绿绿。"
    "将两条信号线直接相连，合并为一条信号线，合并后的信号跟或门效果类似。"
  end
end
