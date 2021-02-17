defmodule Onicn.Buildings.LiquidFilter do
  use Onicn.Categories.Building

  summary "液体过滤器能够将一根管道中混合的液体分离成不同的液体输出到不同管道。"
  summary "液体过滤器可以选择一种液体种类。"
  summary "液体过滤器有一个液体输入口和两个液体输出口。"
  summary "白色为液体输入口标志。连接含有多种液体的上游液体管道。"
  summary "黄色为选中液体输出口标志。输出选中的特定液体。"
  summary "绿色为默认液体输出口标志。输出其余种类的液体。"

  usage "从混合的液体中分离出需要的特定液体。"
end
