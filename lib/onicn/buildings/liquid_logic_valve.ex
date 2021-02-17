defmodule Onicn.Buildings.LiquidLogicValve do
  use Onicn.Categories.Building

  section "简介" do
    "液体开关阀能够按照自动化信号允许或禁止液体通过。"
    "当液体开关阀收到自动化绿色信号T时，允许液体通过。"
    "当收到自动化红色信号F时，禁止液体通过。"
    "如果液体开关阀未通电，禁止液体通过。"
  end

  section "用途" do
    "自动化控制液体流向。"
  end
end
