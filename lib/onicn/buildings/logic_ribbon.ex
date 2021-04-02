defmodule Onicn.Buildings.LogicRibbon do
  use Onicn.Categories.Building

  section "简介" do
    "信号线组相当于把四条信号线压缩到一条线中。将信号线组输入到大多数建筑时只会使用第一个信号的值。"
    "信号线之间连接信号线组会过载损害。"
    "需要线组写入器线组读取器才可以处理四个信号。对于小型系统还是信号线更方便。"
  end
end
