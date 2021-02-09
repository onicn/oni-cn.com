defmodule Onicn.Buildings.LogicPowerRelay do
  use Onicn.Categories.Building
  
  summary "电力开关能够用自动化信号来控制接通或断开电路。"
  summary "当自动化信号输入为T时，接通电路。"
  summary "当信号为F时，断开电路。"
  summary "断开时，靠近发电机和电池的一端电路不受影响，远离发电机和电池的一端电路会停止供电。"

  usage "自动化控制同时打开或关闭多个电器。"
end
