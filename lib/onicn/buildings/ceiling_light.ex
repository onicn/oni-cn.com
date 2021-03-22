defmodule Onicn.Buildings.CeilingLight do
  use Onicn.Categories.Building

  section "简介" do
    "吸顶灯可以放在天花板上提供光照。虽然比电灯多耗电2W，但是建筑位置更方便。"
  end

  section "用途" do
    "光照可以增加复制人 15% 操作速度。"
    "种植毛刺花需要光照。"
    "沙滩椅需要光照。"
    "光照可以提高藻类箱的制氧量。"
    "跟温度传感器配合可以作为小号加热器来给植物种植区升温。"
    content "[DLC]怕黑的小人睡觉时需要光照。", only: :spaced_out
  end

  # todo add an image of light
end
