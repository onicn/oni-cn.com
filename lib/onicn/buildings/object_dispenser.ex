defmodule Onicn.Buildings.ObjectDispenser do
  use Onicn.Categories.Building

  summary "能够用自动化信号来控制储存或清空资源。"
  summary "当收到自动化输入信号为绿色时，自动卸物箱会将储存的资源清空并掉落在右侧格子上。自动卸物箱可左右翻转。"

  usage "和运输系统配合，用于将资源自动掉落在指定位置。例如将肥料掉落至下方高温位置使其变为泥土。"
end
