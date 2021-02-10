defmodule Onicn.Buildings.AirFilter do
  use Onicn.Categories.Building
  
  summary "空气净化器能够将污染氧净化为氧气。"
  summary "污染氧的作用范围是左右各三格，上下各两格（不含空气净化器本身格子）。"
  summary "污染氧中携带的黏液肺病菌大部分转移到产出的粘土中，少部分转移到产出的氧气中。这两者中黏液肺均不能存活，会快速死亡。"
  summary "需要放入过滤介质（沙子或浮土），产出粘土的温度是输入材料的温度。"

  usage "用于清除沼泽区中的大量污染氧，以及其他污染氧来源。"

end
