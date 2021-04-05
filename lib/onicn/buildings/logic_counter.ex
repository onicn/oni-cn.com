defmodule Onicn.Buildings.LogicCounter do
  use Onicn.Categories.Building

  section "简介" do
    "信号计数器可以显示数字0到9。每次收到绿色信号计数加1。"
    "当信号计数器显示数字0的时候输出绿色信号。多个信号计数器连接可以配合显示更大的数字(将一个计数器的输出连到下一个计数器的输入）。"
    "旋转建筑不会影响数字显示方向。"
  end
end
