defmodule Onicn.Buildings.LiquidConduitElementSensor do
  use Onicn.Categories.Building

  summary "液体管道元素传感器能够探测所在格子的液体管道内是否存在特定液体。"
  summary "液体管道元素传感器需要和液体管道安装在同一格，并选择一种液体元素。"
  summary "在该种液体流过这一格时，传感器输出自动化绿色信号T；其余时间输出红色信号F。"

  usage "传感器和液体开关阀配合使用可以替代液体过滤器。"

end
