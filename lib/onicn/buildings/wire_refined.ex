defmodule Onicn.Buildings.WireRefined do
  use Onicn.Categories.Building

  section "简介" do
    "导线是电线的高级版本，可以负载2千瓦电力，而且没有装饰度处罚，但是需要精炼金属来建造。"
  end

  section "用途" do
    "连接实时负载不超过2千瓦的电网。"
  end

  section "小技巧" do
    "可以建设在墙壁里。如果建造在自然方块里，复制人会先挖掉该方块。"
    "通常不同负载的电线不能连接在一起，否则负载会以最低的电线为准，因此浪费了高负载的电线。"
    "要跨越其它电网的电线时，需要用到导线桥。"
  end
end
