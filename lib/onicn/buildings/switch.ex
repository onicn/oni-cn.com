defmodule Onicn.Buildings.Switch do
  use Onicn.Categories.Building

  section "简介" do
    "电闸能够让复制人手动控制接通或断开电路。"
    "不需要地板墙壁或天花板的支持。"
    "断开时，靠近发电机和电池的一端电路不受影响，远离发电机和电池的一端电路会停止供电。"
  end

  section "用途" do
    "供同时打开或关闭多个电器。"
    "不提供自动化接口。需要自动化控制的时候可以用电力开关代替，或者用信号线直接控制用电器。"
  end
end
