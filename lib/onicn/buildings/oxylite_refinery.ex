defmodule Onicn.Buildings.OxyliteRefinery do
  use Onicn.Categories.Building

  section "简介" do
    "氧石精炼炉用少量的金和氧气生产氧石。"
  end

  section "用途" do
    "主要目的是生产氧石，作为固体氧化剂提供给火箭固体氧化剂舱。"
  end

  section "小技巧" do
    "厚壳飞鱼也可以生产氧石，跟厚壳飞鱼比，氧石精炼炉氧气转化比例略高（100% vs 95%），较容易维护和稳定，但是需要消耗金以及很多电力。"
    "无论输入氧气的速度是多少，消耗电力都是1200瓦每秒，因此建议最大化氧气输入管道的流量。"
  end
end
