defmodule Onicn.Buildings.GasVent do
  use Onicn.Categories.Building
  section "简介" do
    "排气口能够将自气体管道输入的气体排放到世界中。"
    "排气口有一个气体输入口，接入气体管道系统后，能够将来自气体管道的气体排放到世界中。"
    "如果排气口所在格子的压力达到2千克，排气口因超压而停止工作。"
  end

  section "用途" do
    "用于将气体排放到指定位置。"
    "可以在排气口的位置倒少量液体(小于2千克)来避免排气口超压，因为排气口排出的气体会被液体挤到上面，排气口位置的液体压力会一直小于2千克。"
  end
end
