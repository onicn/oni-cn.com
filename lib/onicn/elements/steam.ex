defmodule Onicn.Elements.Steam do
  use Onicn.Categories.Gas,
    cn_name: "蒸汽"

  section "简介" do
    "蒸汽是水的气体形态。"
  end

  section "用途" do
    "蒸汽冷却至 97.35 摄氏度（凝结点 -2 摄氏度）得到水。水是游戏中的重要资源之一。"
    "蒸汽引擎使用蒸汽作为火箭动力。"
    "蒸汽发电机能够用蒸汽发电并消除热量。此法需要蒸汽至少为 125 摄氏度。"
    "桑拿浴室需要通入蒸汽才能工作。"
    "节汽具有较高的比热容，在高于 100 摄氏度的环境下，可以用水代替氢气做为导热介质。"
  end

  section "生产" do
    "低温蒸汽喷孔定期喷发出 110 摄氏度的蒸汽。"
    "蒸汽喷孔定期喷发出 500 摄氏度的蒸汽。"
    "将水加热至 101.35 摄氏度（沸点 +2 摄氏度）就得到蒸汽。"
    "将污染水加热至 121.35 摄氏度（沸点 +2 摄氏度）会形成蒸汽（99% 质量）和泥土（1% 质量）。"
    "将盐水加热至 101.69 摄氏度（沸点 +2 摄氏度）会形成蒸汽（93% 质量）和盐（7% 质量）。"
    "将浓盐水加热至 104.75 摄氏度（沸点 +2 摄氏度）会形成蒸汽（70% 质量）和盐（30% 质量）。"
  end
end
