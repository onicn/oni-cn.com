defmodule Onicn.Buildings.LiquidPump do
  use Onicn.Categories.Building

  section "简介" do
    "液泵能够以10千克/秒的速率抽取液体并输出到液体管道系统中。"
    "液泵需要最下两格接触液体才能工作。液泵不需要地基。"
    "管道堵塞后会停止抽取液体。不工作时不耗电。"
  end

  section "用途" do
    "用于抽取各种液体输入到液体管道中。"
  end

  section "小技巧" do
    "液泵的默认过热温度为75摄氏度。在抽取热水及原油时，应选用金汞合金（过热温度+50摄氏度）以避免系统过热。"
  end
end
