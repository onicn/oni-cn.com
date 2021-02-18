defmodule Onicn.Buildings.GasFilter do
  use Onicn.Categories.Building

  section "简介" do
    "气体过滤器能够将一根管道中混合的气体分离成不同的气体输出到不同管道。"
    "气体过滤器可以选择一种气体种类。"
    "气体过滤器有一个气体输入口和两个气体输出口。"
    "白色为气体输入口标志。连接含有多种气体的上游气体管道。"
    "黄色为选中气体输出口标志。输出选中的特定气体。"
    "绿色为默认气体输出口标志。输出其余种类的气体。"
  end

  section "用途" do
    "从混合的气体中分离出需要的特定气体。"
  end
end
