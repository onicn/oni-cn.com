defmodule Onicn.Elements.DirtyWater do
  use Onicn.Categories.Liquid,
    cn_name: "污染水"

  section "简介" do
    "污染水是一种液体，常见于沼泽区中。当上方气压小于1800克，会挥发出污染氧。"
  end

  section "用途" do
    "净水器能够将污染水过滤成水。5 千克/秒 污染水 + 1 千克/秒 沙子 或 浮土 = 5 千克/秒 水 + 200 克/秒 污染土。"
    "大嘴鱼能够将污染水转化为清水。"
    "污染水可以加热变成蒸汽（99%质量）和泥土（1%质量）。蒸汽可以再次冷凝变成水。"
    "人工种植火椒藤需要每周期灌溉35千克污染水。"
    "人工种植顶针芦苇需要每周期灌溉160千克污染水。"
    "人工种植乔木树需要每周期灌溉70千克污染水。"
    "污染水有更广的温度范围，比水更适合用作冷却液。"
    "污染水能够用来吸收多余的热量，然后灌溉给火椒藤，达到消灭热量的效果。"
  end

  section "生产" do
    "沼泽区存在大量污染水。冰冻区的污染冰融化后变成污染水。"
    "每次使用冲水马桶、淋浴间、洗手盆和洗手池消耗水，生成污染水。"
    "天然气发电机产生污染水作为副产品，速率为67.5 克/秒。"
    "石油发电机产生污染水作为副产品，速率为750 克/秒。"

    "藻类箱能够将藻类和水转化为氧气和污染水。30 克/秒 藻类 + 300 克/秒 水 = 40 克/秒 氧气 + 290.33 克/秒 污染水。如果环境气体是二氧化碳，藻类箱还可以除去333.33 毫克/秒 二氧化碳。"

    "碳素脱离器能用水吸附二氧化碳，生成污染水。1 千克/秒 水 + 300 克/秒 二氧化碳 = 1 千克/秒 污染水。"
    "藻类蒸馏器能够用菌泥蒸馏出藻类和污染水。600 克/秒 菌泥 = 200 克/秒 藻类 + 400 克/秒 污染水。"
    "呕吐的复制人或者尿急而未能及时赶到厕所的复制人会排放出污染水。"
    "低温泥浆间歇泉和污染水喷孔会定期排放出污染水。"
  end

  section "小技巧" do
    "沼泽区的天然污染水大多是无菌的。应该和带菌水（例如冲水马桶产生的水）分开处理。"
    "净水器不会清除任何污染水中携带的食物中毒病菌。这些病菌会分摊在输出的清水和污染土中。"
    "冲水马桶输出的污染水量大于输入的水量。"
  end
end
