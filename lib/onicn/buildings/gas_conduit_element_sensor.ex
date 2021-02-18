defmodule Onicn.Buildings.GasConduitElementSensor do
  use Onicn.Categories.Building

  section "简介" do
    "气体管道元素传感器能够探测所在格子的气体管道内是否存在特定气体。"
    "气体管道元素传感器需要和气体管道安装在同一格，并选择一种气体元素。"
    "在该种气体流过这一格时，传感器输出自动化绿色信号T；其余时间输出红色信号F。"
  end

  section "用途" do
    "传感器和气体开关阀配合使用可以替代气体过滤器。"
  end
end
