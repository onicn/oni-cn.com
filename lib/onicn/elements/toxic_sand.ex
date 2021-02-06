defmodule Onicn.Elements.ToxicSand do
  use Onicn.Categories.Solid,
    cn_name: "污染土"
    
  summary "污染土是一种有机物。"
  
  usage "堆肥堆能够将污染土转化为泥土。"
  usage "污染土可以作为饲料喂食给草质哈奇，草质哈奇会排泄出煤炭。"
  usage "污染土可以作为饲料喂食给抛壳蟹。抛壳蟹的壳可以粉碎成石灰。抛壳蟹排泄出沙子。"
  
  production "每次使用户外厕所会将6.7千克泥土转化为等质量的污染土。"
  production "净水器产出污染土作为副产品。5 千克/秒 污染水 + 1 千克/秒 沙子 或 浮土 = 5 千克/秒 水 + 200 克/秒 污染土。"
  production "乙醇蒸馏器产出污染土作为副产品。1 千克/秒 木料 = 500 克/秒 乙醇 + 333.33 克/秒 污染土 + 166.67 克/秒 二氧化碳。"
  production "帕库鱼及其亚种摄入藻类，排泄出污染土。"
end
