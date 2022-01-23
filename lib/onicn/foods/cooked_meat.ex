defmodule Onicn.Foods.CookedMeat do
  use Onicn.Categories.Food,
    cn_name: "烤肉串",
    en_name: "Barbeque"

  section "简介" do
    "一份烤肉串需要2千克肉作为原料。"
    "如果作为食物的唯一来源，那么每个复制人需要消耗: 肉 0.5 千克 / 周期。"
  end
end
