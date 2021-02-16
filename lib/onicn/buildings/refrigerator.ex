defmodule Onicn.Buildings.Refrigerator do
  use Onicn.Categories.Building

  summary "冰箱能够以低温储存食物，延长食物的保存时间。"
  summary "内部储存温度为4摄氏度，用低温防止食物腐败。"
  summary "冰箱内部的低温环境可以杀菌。"
  summary "冰箱在污染氧环境中不能防止食物变质。"

  usage "用冰箱来保存食物。"

  tips "冰箱不通电也可以存储食物，此时没有保鲜作用，效果类似于口粮箱，但是比口粮箱有更高的装饰度，并且占空间更小。"
  tips "通电的冰箱因为会持续用电所以耗电量大。通常用其它方式来保鲜食物。例如保存在4摄氏度以下无污染氧的环境中，也可以保存在真空，二氧化碳，氢气或氯气环境中。"
  tips "冰箱也可以存储药品，但是药品不需要保鲜。"

end
