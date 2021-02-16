defmodule Onicn.Buildings.RationBox do
  use Onicn.Categories.Building

  summary "口粮箱能储存食物，防止动物偷吃，但无法减缓食物变质。"
  summary "动物不能取食口粮箱内储存的食物。"
  summary "每局游戏开始时必有一个口粮箱位于打印舱左边，里面储存有16000千卡的营养棒，营养棒不会变质。"

  usage "类似于存储箱，用来储存食品和药品。"

  tips "可以用冰箱代替口粮箱。为了防止食物腐败，通常把食物保存在4摄氏度以下无污染氧的环境中，也可以保存在真空，二氧化碳，氢气或氯气环境中。"

end
