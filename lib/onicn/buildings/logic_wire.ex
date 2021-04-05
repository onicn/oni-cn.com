defmodule Onicn.Buildings.LogicWire do
  use Onicn.Categories.Building

  section "简介" do
    "将建筑与传感器连接。当信号线连接的任何信号输出口输出绿色信号时，所有连接的终端都会变为绿色信号。"
    "可穿过地板与墙壁。"
    "如果直接连接信号线组，并且信号线组的234号线有绿色信号的话，信号线会过载损害。"
  end
end
