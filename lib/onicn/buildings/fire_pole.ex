defmodule Onicn.Buildings.FirePole do
  use Onicn.Categories.Building
  
  summary "滑竿能使复制人更快地向下移动，但相应的向上移动会变慢。"
  summary "位于滑竿上时，复制人向下的移动速度+75%，向上的移动速度-75%。"
  summary "当滑竿和梯子同时可用时，复制人向下移动会优先使用滑竿，向上移动会优先使用梯子。"
  summary "滑竿的顶部可供复制人水平行走。"

  usage "滑竿可以节省移动消耗时间，一般和主要竖直通道的梯子配套相邻建设。"
  usage "用导热率高的材料例如铝矿建造，有助于基地热量扩散。"
end
