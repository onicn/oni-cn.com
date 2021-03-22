defmodule Onicn.Buildings.FloorLamp do
  use Onicn.Categories.Building

  section "简介" do
    "电灯可以提供光照和装饰度。比吸顶灯少2W耗电。从上面的格子释放光照。"
  end

  section "用途" do
    "光照可以增加复制人 15% 操作速度。"
    "种植毛刺花需要光照。"
    "沙滩椅需要光照。"
    "光照可以提高藻类箱的制氧量。"
    content "[DLC]怕黑的小人睡觉时需要光照。", only: :spaced_out
  end
  # todo add an image of light
end
