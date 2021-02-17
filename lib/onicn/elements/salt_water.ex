defmodule Onicn.Elements.SaltWater do
  use Onicn.Categories.Liquid,
    cn_name: "盐水"

  section "简介" do
    "盐水是一种水资源，大量存在于盐池区。"
  end

  section "用途" do
    "脱盐器能够将盐水淡化成水和盐。5 千克/秒 盐水 = 4.65 千克/秒 水 + 350 克/秒 盐。"
    "将盐水加热至101.69摄氏度（沸点+2摄氏度）会形成蒸汽（93%质量）和盐（7%质量）"
    "将盐水降温至-9.5摄氏度（冰点-2摄氏度）会形成冰（77%质量）和浓盐水（23%质量）。"
    "人工种植水草需要每周期灌溉5千克盐水。"
  end

  section "生产" do
    "盐池区有大量的天然盐水。"
    "盐水间歇泉会定期喷发出盐水。"
  end

  section "小技巧" do
    "浓盐水和水混合并不会产生盐水。"
  end
end
