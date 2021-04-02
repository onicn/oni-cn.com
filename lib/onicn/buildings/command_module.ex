defmodule Onicn.Buildings.CommandModule do
  use Onicn.Categories.Building

  section "简介" do
    "指挥舱是每个火箭必须建造在最顶部的模块。"
    "指派的复制人需要有火箭驾驶技能。"
    "需要装入一个太空服才能工作。"
  end

  section "自动化" do
    "指挥舱有一个信号输入端口，一个信号输出端口。输出端口指示当前火箭起飞前的要求是否完全满足，输入端口指挥火箭起飞。"
  end

  section "小技巧" do
    "复制人在指挥舱内会自动治愈一切疾病并且不需要吃饭呼吸，并且没有玩家指示不会出去。可以作为复制人的休眠舱。观光舱也有同样的作用。"
    "穿着喷气服的复制人不需要发射支架就可以进入指挥舱，但是没有发射支架会出不来。"
  end
end
