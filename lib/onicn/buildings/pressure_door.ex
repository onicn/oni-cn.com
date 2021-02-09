defmodule Onicn.Buildings.PressureDoor do
  use Onicn.Categories.Building
  
  summary "机械气闸可以阻挡液体和气体的流动，维持房间气压。它可以由自动化信号控制。"
  summary "当未接通自动化信号时，机械气闸拥有打开、自动、锁定三种模式："
  summary "打开：机械气闸保持打开，液体气体自由流动，复制人和动物可以通过。"
  summary "自动：机械气闸平时关闭，仅当复制人经过时打开。可以设置复制人通行权限。动物不能通过。"
  summary "锁定：机械气闸保持关闭。"
  summary "当机械气闸关闭时，原本占据机械气闸格子的气体会被推至相邻格子。"
  summary "当机械气闸关闭时，液体、气体、光照、装饰值都不能穿过机械气闸。"
  summary "当接通自动化信号时，机械气闸的打开和关闭由自动化信号控制。"
  summary "机械气闸能够导热。"
  summary "机械气闸能够旋转至水平位置。关闭的机械气闸可以作为建筑地基。此机制可利用来自动化控制气闸上方一般不能被自动化控制的建筑。"
  summary "在打开和关闭过程中，机械气闸消耗120瓦电力。维持打开和关闭状态不消耗电力。"
  summary "机械气闸的开关比手动气闸更快。如果未接通电力，机械气闸表现如手动气闸。"
  summary "如果未接通电力，机械气闸的通行权限设置不生效。"

  usage "机械气闸可用于封闭密闭房间，由自动化信号控制允许/阻止液体或气体交换。"
  usage "水平放置的机械气闸可由自动化信号控制打开/关闭，从而间接控制上方建筑运转/停止。"
  usage "太空区的望远镜建议建造在水平放置的机械气闸上。由恰当设计的自动化信号控制打开/关闭，以便在陨石雨结束之后，浮土能够掉落到气闸下方，避免浮土热量导致望远镜过热"

end
