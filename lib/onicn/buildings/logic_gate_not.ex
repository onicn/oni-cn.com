defmodule Onicn.Buildings.LogicGateNot do
  use Onicn.Categories.Building

  section "简介" do
    "非门接收一个自动化信号，输出相反的信号。"
  end

  section "小技巧" do
    "可以与其它大多数建筑重叠建造。"
    "应用信号线组时分别对每位非，例如输入是红红绿绿，输出为绿绿红红。"
  end
end
