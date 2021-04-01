defmodule Onicn.Buildings.SolidLogicValve do
  use Onicn.Categories.Building

  section "简介" do
    "轨道开关阀能够按照自动化信号允许或禁止固体通过。"
    "当轨道开关阀收到自动化绿色信号T时，允许固体通过。"
    "当收到自动化红色信号F时，禁止固体通过。"
    "如果轨道开关阀未通电，禁止固体通过。"
  end

  section "用途" do
    "自动化控制固体运送方向。"
    "和运输轨道元素传感器配合可以形成廉价过滤系统。"
  end
end
