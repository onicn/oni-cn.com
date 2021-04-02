defmodule Onicn.Buildings.LiquidFuelTank do
  use Onicn.Categories.Building

  section "简介" do
    "液缸燃料舱可以输入液态氢或石油作为燃料，相对应地提供给液氢引擎或石油引擎。"
    "返回时所有燃料会清空，可以调整建筑的容量避免输入额外的燃料造成浪费。多出来的燃料复制人会过来取出，以瓶装的形式掉出来。"
  end
end
