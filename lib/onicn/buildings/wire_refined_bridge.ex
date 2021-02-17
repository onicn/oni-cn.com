defmodule Onicn.Buildings.WireRefinedBridge do
  use Onicn.Categories.Building

  section "简介" do
    "导线桥是电线桥的高级版本，和导线配套使用。用于让一根导线跨越另一根（任意类型的）电线而不相互连接。"
    "导线桥可以连接左右两格的导线，而跨过中间一格。"
    "导线桥也可旋转至竖直位置。"
    "导线的负载功率上限是2千瓦。"
  end

  section "用途" do
    "将用电器分割成不同电网时，有时需要用到导线桥来跨越另一个电网的线，避免电网合并。"
  end

  section "小技巧" do
    "电路过载时导线桥会优先损坏，有类似保险丝的作用。"
  end
end
