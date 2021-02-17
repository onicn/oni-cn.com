defmodule Onicn.Buildings.SteamTurbine2 do
  use Onicn.Categories.Building

  section "表格测试" do
    "其它简介"
    """
    | 蒸汽吸入口数量 | 蒸汽温度(°C) | 功率(W) |
    | -------------- | ------------ | ------- |
    | 5              | 200          | 850     |
    | 4              | 226.25       | 850     |
    | 3              | 270          | 850     |
    | 2              | 357.5        | 850     |
    | 1*             | 357.5        | 425     |
    """
  end
end
