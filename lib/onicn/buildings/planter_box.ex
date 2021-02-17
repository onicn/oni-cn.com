defmodule Onicn.Buildings.PlanterBox do
  use Onicn.Categories.Building

  section "简介" do
    "种植箱能够人工种植植物。"

    "种在种植箱中的植物其生长速度为野生状态的4倍，但需要额外的肥料和灌溉。当种植需要灌溉的植物如毛刺花时，复制人会手动从手压泵取水灌溉。种植箱能够储存3天所需的肥料和灌溉量。当其储量低于半天所需量时，系统会给复制人下达任务。"
  end

  section "用途" do
    "在游戏早期种植植物，因为装饰度低，后面可以被土培砖所取代。"
  end

  section "小技巧" do
    "种植箱里的植物不能用来喂养小动物，应使用土培砖或液培砖。"
  end
end
