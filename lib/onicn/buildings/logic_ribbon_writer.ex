defmodule Onicn.Buildings.LogicRibbonWriter do
  use Onicn.Categories.Building
  section "简介" do
    "线组写入器向信号线组写入信号，可以指定输出到信号线组的其中一条线。"
    "用四个线组写入器向信号线组分别输出四个通道之后相连，可以将四条信号线合并成一条信号线组。"
  end
  section "小技巧" do
    "会在占用的格子之间导热，在热敏感环境使用要注意。"
  end
end
