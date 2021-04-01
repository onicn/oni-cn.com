defmodule Onicn.Buildings.SolidConduitInbox do
  use Onicn.Categories.Building

  section "简介" do
    "运输装载器可以装入固体并送到运输轨道上。"
    "只会装入玩家选择的固体。"
    "建造需要复制人拥有机电工程技能。"
  end

  section "小技巧" do
    "被禁用的运输装载器依然可以通过复制人（需勾选允许人力操作）或自动清扫器装入固体，但是不会送入运输轨道。"
    "容量只有1000千克（50段轨道的运载量），因此可能需要在附近建造额外的存储箱。"
  end
end
