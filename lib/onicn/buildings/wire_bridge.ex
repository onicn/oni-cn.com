defmodule Onicn.Buildings.WireBridge do
  use Onicn.Categories.Building

  section "简介" do
    "电线桥用于让一根电线跨越另一根（任意类型的）电线而不相互连接。"
    "电线桥可以连接左右两格的电线，而跨过中间一格。"
    "电线桥也可旋转至竖直位置。"
    "电线的负载功率上限是1千瓦。"
  end

  section "用途" do
    "将用电器分割成不同电网时，有时需要用到电线桥来跨越另一个电网的线，避免电网合并。"
  end

  section "小技巧" do
    "电路过载时电线桥会优先损坏，有类似保险丝的作用。"
  end
end
