defmodule Onicn.Buildings.Checkpoint do
  use Onicn.Categories.Building

  section "简介" do
    "复制人检查站用于控制复制人的移动区域。必须连接信号线。"
    "跟门禁不同的是，即使复制人被禁止通过，复制人依然会被指派对面的工作，复制人会在检查点前等待。"
    "跟门不同，复制人检查站只能控制一个方向。"
  end

  section "小技巧" do
    "跟压力板或复制人运动传感器配合，可以在让复制人在洗手池或矿石洗涤器前排队，防止有人跳过该建筑。"
  end
end
