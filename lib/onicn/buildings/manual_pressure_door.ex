defmodule Onicn.Buildings.ManualPressureDoor do
  use Onicn.Categories.Building

  summary "手动气闸可以阻挡液体和气体的流动，维持房间气压。"
  summary "类似于气动门，手动气闸同样拥有打开、自动、锁定三种模式："
  summary "打开：手动气闸保持打开，液体气体自由流动，复制人和动物可以通过。"
  summary "自动：手动气闸平时关闭，仅当复制人经过时打开。可以设置复制人通行权限。动物不能通过。"
  summary "锁定：手动气闸保持关闭。"
  summary "当手动气闸关闭时，液体、气体、光照、装饰值都不能穿过手动气闸。"
  summary "注意手动气闸能够导热。"
  summary "手动气闸能够旋转至水平方向。关闭的手动气闸可以作为建筑地基。"

  usage "手动气闸常用于密封房间，尽可能减少房间中特定气体外泄。"

  tips "液封门可起到同样效果"
end
