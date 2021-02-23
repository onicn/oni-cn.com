defmodule Onicn.Buildings.OilRefinery do
  use Onicn.Categories.Building

  section "简介" do
    "原油精炼器可以将原油以2:1的比例转化为石油，并释放一些天然气到环境中。"
    "周围环境气压高于5千克后停止工作。"
    "需要复制人操作。"
  end

  section "用途" do
    "将原油转化为石油和天然气，石油可以用来供给石油发电机发电，或聚合压机生产塑料。"
  end
end
