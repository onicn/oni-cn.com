defmodule Onicn.Buildings.FishFeeder do
  use Onicn.Categories.Building

  summary "喂鱼器能够存储藻类，喂养下方的帕库鱼。"
  summary "喂鱼器上方3格是建筑空间，下方2格不算是建筑空间，可以和其他建筑重叠。"
  summary "喂鱼器下部需要浸没在水体中。"
  summary "喂鱼器能够作为砖块围成房间。"
  summary "从喂鱼器进食后的帕库鱼会获得“从喂食器进食”的状态，持续1周期，-20%野性/周期，幸福度+2。"

  usage "饲养帕库鱼。"
end
