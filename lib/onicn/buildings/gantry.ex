defmodule Onicn.Buildings.Gantry do
  use Onicn.Categories.Building

  section "简介" do
    "发射支架是一种可伸缩的脚手架，能够跨过否则无法到达的火箭模块。 复制人必须使用发射支架才能到达指挥舱和观光舱以及为固燃推进器或固态氧化剂舱装填物资。"
    "发射支架的建造位置与火箭应空出一格，否则火箭即使在发射支架缩回时也会在发射和着陆时对其造成损坏。"
  end

  section "小技巧" do
    "火箭发射或着陆时应将发射支架缩回，否则火箭会损坏发射支架。"
    "虽然耗电高但是只在伸缩的1.6秒期间耗电。因此如果错开伸缩的时间，一排支架可以使用一条导线。"
    "使用喷气服可以代替固燃推进器或固态氧化剂舱的发射支架。"
    "自动清扫器可以省去发射支架为固燃推进器或固态氧化剂舱装填，但是自动清扫器很容易过热损坏。"
  end
end
