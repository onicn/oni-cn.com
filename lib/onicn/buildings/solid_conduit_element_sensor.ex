defmodule Onicn.Buildings.SolidConduitElementSensor do
  use Onicn.Categories.Building

  section "简介" do
    "运输轨道元素传感器能够探测所在格子的运输轨道内是否存在特定固体。"
    "运输轨道元素传感器需要和运输轨道安装在同一格，并选择一种固体元素。"
    "在该种固体经过这一格时，传感器输出自动化绿色信号T；其余时间输出红色信号F。"
  end

  section "用途" do
    "运输轨道元素传感器和轨道开关阀配合使用可以替代固体过滤器。"
  end
end
