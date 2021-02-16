defmodule Onicn.Buildings.CreatureFeeder do
  use Onicn.Categories.Building

  summary "小动物喂食器类似于存储箱，能够存储固体动物饲料，喂食靠近的动物。"
  summary "玩家可以选择饲料类型，并设定储存容量和优先级。"
  summary "储存在小动物喂食器中的食物类饲料会正常变质。"
  summary "不可用喂食器的小动物：帕库鱼及其亚种，食用气体的小动物例如浮油生物，食用植物的小动物例如毛鳞壁虎，不吃东西的小动物疫病章鱼。"

  usage "给小动物喂食。"

end
