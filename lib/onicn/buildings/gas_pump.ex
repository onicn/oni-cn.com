defmodule Onicn.Buildings.GasPump do
  use Onicn.Categories.Building
  section "简介" do
    "气泵能够以500克/秒的速率抽取气体并输出到气体管道系统中。"
    "气泵需要最下两格接触气体才能工作。气泵不需要地基。"
    "管道堵塞后会停止抽取气体。不工作时不耗电。"
  end

  section "用途" do
    "用于抽取各种气体输入到气体管道中。"
  end

  section "小技巧" do
    "气泵的默认过热温度为75摄氏度。在抽取高温气体时，应选用增加过热温度的材料以避免过热损坏。"
    "一条气体管道需要两个气泵一起抽气才可以达到满流量。"
  end
end
