defmodule Onicn.Buildings.WoodGasGenerator do
  use Onicn.Categories.Building
  section "简介" do
    "木料燃烧器消耗木料产生电力。可以设置在连接的电池电力低于某一水平时才开启。"
  end

  section "小技巧" do
    "木料燃烧器类似于燃煤发电机，是效率较低且不环保的发电机。"
    "木料燃烧器可以存放20吨的木料，全部燃烧完发的电可以充满125个巨型电池。因此在缺少自动化控制的情况下可能会浪费大量燃料。"
    "木料燃烧器可以为浮油生物养殖场提供热量和二氧化碳。但是要知道浮油生物产油效率很低，因此比较适合用来消耗多余的二氧化碳而不是以产油为主要目的。"
  end
end
