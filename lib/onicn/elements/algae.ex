defmodule Onicn.Elements.Algae do
  use Onicn.Categories.Solid,
    cn_name: "藻类"

  summary "藻类是一种有机物，常见于常温区。它是游戏早期氧气的重要来源。"

  usage "氧气扩散器能够将藻类转化为氧气。550 克/秒 藻类 = 500 克/秒 氧气。"

  usage "藻类箱能够将藻类和水转化为氧气和污染水。30 克/秒 藻类 + 300 克/秒 水 = 40 克/秒 氧气 + 290.33 克/秒 污染水。如果处于二氧化碳环境中，藻类容器还可以除去333.33 毫克/秒 二氧化碳。"

  usage "藻类可以作为饲料喂食给草质哈奇，草质哈奇会排泄出煤炭。鉴于藻类是重要的氧气来源，不建议这样做。"
  usage "藻类可以作为饲料喂食给帕库鱼及其亚种，帕库鱼会排泄出污染土。由于帕库鱼可以吃掉大量藻类，养殖要注意藻类余量。"

  production "藻类蒸馏器能够将菌泥转化为藻类。 600 克/秒 菌泥 = 200 克/秒 藻类 + 400 克/秒 污染水。"
end
