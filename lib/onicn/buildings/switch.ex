defmodule Onicn.Buildings.Switch do
  use Onicn.Categories.Building
  
  summary "开关能够让复制人手动控制接通或断开电路。"
  summary "复制人能够手动操作开关接通或断开相连接的电路。"
  summary "断开时，靠近发电机和电池的一端电路不受影响，远离发电机和电池的一端电路会停止供电。"

  usage "供同时打开或关闭多个电器。"
end
