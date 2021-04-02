defmodule Onicn.Buildings.SolidConduitOutbox do
  use Onicn.Categories.Building

  section "简介" do
    "运输存放器可以作为运输系统的终点，存放固体材料。"
    "建造需要复制人拥有机电工程技能。"
  end

  section "小技巧" do
    "容量只有100千克（5段轨道的运载量），因此可能需要在附近建造额外的存储箱。"
    "运输存放器里的固体可以被自动清扫器移动到附近的存储箱中，只要存储箱的优先级比运输存放器高。"
  end
end
