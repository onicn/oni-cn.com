defmodule Onicn.Elements.CrudeOil do
  use Onicn.Categories.Liquid

  section "简介" do
    "原油是游戏中的一种重要资源，大量存在于原油区。"
  end

  section "用途" do
    "原油精炼器能够将原油转化为石油和天然气。10 千克/秒 原油 = 5 千克/秒 石油 + 90 克/秒 天然气。"
    "将原油加热至401.85摄氏度（沸点+2摄氏度）会转化成石油。"
  end

  section "生产" do
    "浮油生物呼吸二氧化碳，排泄出原油。"
    "向建造在储油石上的油井灌入水，会产出原油。1 千克/秒 水 = 3.33333 千克/秒 原油。"
    "漏油裂缝会产出原油。"
  end
end
