defmodule Onicn.Buildings.IceMachine do
  use Onicn.Categories.Building

  section "简介" do
    "制冰机将水结成冰。它会将输入的水降温到 -20 °C ，并将热量释放出来，但是会在这个热量基础上减少 3700 DTU/s 。这个值跟输入水的温度无关，但是更高的水温需要更长时间降温。"
    "当存储的冰小于 150 千克时会重新开始工作。每次冷却 30 千克水。每秒钟降温 0.16 °C 。"
  end
end
