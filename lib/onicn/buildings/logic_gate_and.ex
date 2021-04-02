defmodule Onicn.Buildings.LogicGateAND do
  use Onicn.Categories.Building
  section "简介" do
    "与门在两个输入信号都为绿色时输出绿色信号，其它情况输出红色信号。"
  end
  section "小技巧" do
    "可以与其它大多数建筑重叠建造。"
    "有一个没有输入输出的空格子可以自由通过其它自动化线。"
    "应用信号线组时分别对每位与，例如第一个输入是红红绿绿，第二个输入是红绿红绿，输出为红红红绿。"
  end
end
