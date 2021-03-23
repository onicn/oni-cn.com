defmodule Onicn.Buildings.LiquidHeater do
  use Onicn.Categories.Building

  section "简介" do
    "液体加热器将需要建造在液体中，可以将周围液体升温至 85 摄氏度。"
  end

  section "用途" do
    "可以快速杀灭食物中毒病菌。"
    "可以将 1000 千克 水以 1 摄氏度/秒 的速度升温。可以作为环境升温的有效手段。"
  end

  section "BUG" do
    "用脉冲信号不断开关液体加热器可以突破 85 摄氏度的限制，但是在游戏重新加载后会失效。"
  end
end
