defmodule Onicn.Buildings.LiquidLogicValve do
  use Onicn.Categories.Building

  summary "液体开关阀能够按照自动化信号允许或禁止液体通过。"
  summary "当液体开关阀收到自动化绿色信号T时，允许液体通过。"
  summary "当收到自动化红色信号F时，禁止液体通过。"
  summary "如果液体开关阀未通电，禁止液体通过。"

  usage "自动化控制液体流向。"
end
