defmodule Onicn.Buildings.Co2Scrubber do
  use Onicn.Categories.Building

  section "简介" do
    "碳素脱离器能够高效地清除二氧化碳。不需要输入气体管道，而是从环境直接吸取。"
    "碳素脱离器使用水来吸附二氧化碳并产生污染水。不会产生氧气。"
    "产出的污染水温度跟输入水的温度有关。"
  end

  section "用途" do
    "清除二氧化碳。"
  end

  section "小技巧" do
    "因为二氧化碳会沉在底部，因此放在下方比较有效。"
    "可以和净水器的管道连成一个循环而重复利用一小部分水。"
  end
end
