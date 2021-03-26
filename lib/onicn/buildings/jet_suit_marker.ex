defmodule Onicn.Buildings.JetSuitMarker do
  use Onicn.Categories.Building

  section "简介" do
    "喷气服检查站和气压服检查站作用相同，只不过作用于喷气服。"
  end

  section "BUG" do
    "复制人会在喷气服检查站这里脱掉气压服丢在地上。"
    "当有区域可以同时通过气压服检查站和喷气服检查站到达时，复制人偶尔会经过气压服检查站但是不换衣服。"
  end
end
