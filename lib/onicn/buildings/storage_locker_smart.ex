defmodule Onicn.Buildings.StorageLockerSmart do
  use Onicn.Categories.Building

  summary "智能储存箱可用于储存固体元素。玩家可以选择需要存放的元素类型。当储量达到玩家设定的阈值时，智能储存箱输出自动化控制信号T。"
  summary "智能储存箱类似于储存箱，差别在于智能储存箱需要消耗60瓦电力，并且在装满时能够输出自动化控制信号。"

  usage "智能储存箱输出的自动化信号能用来自动控制生产类建筑的开启/关闭"
end
