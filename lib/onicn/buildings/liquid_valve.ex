defmodule Onicn.Buildings.LiquidValve do
  use Onicn.Categories.Building

  summary "液体调节阀能够限制管道液体流速。"
  summary "液体调节阀能够设定液体流速上限。修改设定后需要复制人操作后才能生效。"
  summary "当输入管道液体流速超过该上限时，液体调节阀会阻挡液体，仅按流速上限向下游管道输出。"
  summary "当输入管道液体流速低于该上限时，正常向下游管道输出。"

  usage "精细调整液体管道流速。"
end
