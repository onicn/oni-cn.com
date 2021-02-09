defmodule Onicn.Buildings.Wire do
  use Onicn.Categories.Building
  
  summary "电线用于传输电力。"
  summary "电线可以埋藏在墙壁和地板砖块内，此时它的装饰值处罚不会生效。"
  summary "电线的负载功率是1千瓦。"
  summary "当一个电网的实时功率超过1千瓦时，电线有概率会过载损坏。"

  usage "构建电网传输电力。"
end
