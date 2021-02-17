defmodule Onicn.Buildings.LogicPowerRelay do
  use Onicn.Categories.Building

  section "简介" do
    "电力开关能够用自动化信号来控制接通或断开电路。"
    "当自动化信号输入为绿色时，接通电路。当信号为红色时，断开电路。"
    "断开时，靠近发电机和电池的一端电路不受影响，远离发电机和电池的一端电路会停止供电。"
  end

  section "用途" do
    "自动化控制同时打开或关闭多个电器。"
  end

  section "小技巧" do
    "功率转换器和大功率转换器也可以起到同样的作用。"
    "开启和关闭的音效会根据连接的信号线的长度而改变，因此可以用来制作音乐。信号线每增长1格，音效会降低半音。最短2格信号线播放C6，3格信号线播发B5。"
  end
end
