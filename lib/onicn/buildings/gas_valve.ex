defmodule Onicn.Buildings.GasValve do
  use Onicn.Categories.Building
  section "简介" do
    "气体调节阀能够限制管道气体流速。"
    "气体调节阀能够设定气体流速上限。修改设定后需要复制人操作后才能生效。"
    "当输入管道气体流速超过该上限时，气体调节阀会阻挡气体，仅按流速上限向下游管道输出。"
    "当输入管道气体流速低于该上限时，正常向下游管道输出。"
  end

  section "用途" do
    "精细调整气体管道流速。"
  end
end
