defmodule Onicn.Buildings.MedicalCot do
  use Onicn.Categories.Building
  section "简介" do
    "分诊床可以提升复制人的生命值。如果没人照顾提升50生命值每周期，有人照顾则提升75生命值每周期。可以恢复呼吸度（不需要氧气）。"
    "躺在上面的复制人相当于在睡觉，可以降低压力和恢复体力。"
    "复制人的生命值降为0后，其它复制人会将它搬运到分诊床上。复制人治愈之后会自动离开，分诊床可以再指派给其它复制人。"
  end

  section "用途" do
    "治疗受伤的复制人。"
  end

end
