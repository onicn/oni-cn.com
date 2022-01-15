alias Onicn.Critters.OilFloaterSpecies

defmodule OilFloaterSpecies do
  use Onicn.Categories.Critter, [
    OilFloaterSpecies.OilFloater,
    OilFloaterSpecies.OilFloaterHighTemp,
    OilFloaterSpecies.OilFloaterDecor
  ]

  section "简介" do
    "浮油生物是一种悬浮生物，常见于原油生态。它能将二氧化碳转化为原油。浮油生物能够悬浮在固体和足够质量的液体之上。"
    "浮油生物死后掉落 2 千克（3200 千卡）肉。"
    "浮油生物消耗 20 千克/周期（33 克/秒）的二氧化碳，且将 50% 的质量转化为其同体温的原油或石油，几乎是热不明区，但在转化石油时会多出一些质量。"
  end

  section "温度偏好" do
    "因其高质量（400 千克）及接近真空的环境，看起来似乎不受温度的影响，但它仍可能会像其他小动物一样被冻死或热死。但与其他小动物不同的是，浮油生物更偏好于炎热的环境且更容易被寒冷的威胁。"
  end

  section "移动" do
    "浮油生物靠悬浮移动，它可以像好吃哈奇一样在固体砖块上移动，但也可以在足量的液体（> 1000 千克）上移动，就像它们是固体砖块一样。它可以沿着对角线跳跃 1 格或 2 格，且可以跳过 1 格的空隙。它可以在液体上移动及游泳，也可以在未形成整个砖块的浅液面（< 1000 千克）里游泳，若形成砖块且质量小于 1000 千克，它会坠落溺水。当其溺水时会尝试到达最近的液体表面或有气体的固体砖块上。"
  end

  section "捕捉" do
    "浮油生物需要小动物陷阱来捕捉，但小动物陷阱是由塑料制成的，油质生态的高温可能会导至小动物陷阱融化，所以在捕捉时需要注意温度。"
  end

  section "浮油生物" do
    "浮油生物的基础类型，颜色为蓝色，常在地图底部发现。它能将二氧化碳转化为原油。"
  end

  section "熔岩浮油生物" do
    "熔岩浮油生物适应更高的温度范围（75°C ↔ 270°C），在原油区的底部偶有发现。熔岩浮油生物能将二氧化碳转化为石油。"
    "当熔岩浮油生物的体温在 100°C - 250°C 时，下熔岩浮油生物蛋的几率会增加。"
    "这两种要求都使有气压服成为饲养它的必要条件。"
  end

  section "长毛浮油生物" do
    "长毛浮油生物适应更低的温度范围（-5°C ↔ 90°C）。它的寿命延长至 150 周期，装饰度提高到 +50（半径 7 格）。它每周期消耗 30 千克（50 克/秒）氧气，而不产出任何资源。"
    "当长发浮油生物的体温在 20°C - 60°C 之间时，下长毛浮油生物蛋的几率会增加。"
    "它可以控制不断运行的自循环制氧机生成的过剩氧气，2 只快乐的温顺长毛浮油生物消耗的氧气相当于 1 位复制人。"

    "若光耀虫正在繁殖或其饲养成本过高时，长毛浮油生物对提升装饰度很有用，因为补给包裹让长毛浮油生物可以提前被养殖。但所有的发光虫变种（除基础类型）都以较低的成本提供了较高的装饰，这使长毛浮油生物只能当没有深渊虫时给卧室提供装饰，或是温度不适合发光虫时（例如工业区）。"

    "若殖民地没有足够的食物喂养好吃哈奇，但有可再生水源且自循环制氧机生产大量的氧气，长毛浮油生物可以被用来产肉。"
    "此变种很大程度上限制了在寒冷环境下饲养浮生物。"
  end

  section "原油/石油策略" do
    "此策略的目标是养殖浮油生物获得原油，或养殖熔岩浮油生物获得石油。方案是在油质生态内建造饲养室，并抽取基地内的二氧化碳充入饲养室内。饲养室底部适当地建造网格砖以便及时排走原油或石油。"
  end

  section "技巧" do
    "1 个最大的的畜舍最多可以饲养 8 只浮油生物。"
    "每个野生浮油生物可以养活 4 位复制人。"
    "1 个碳素脱离器消耗的二氧化碳相当于 9 只快乐的温顺浮油生物或 36 只野生浮油生物。"
    "1 个不断工作的煤炭发电机可以喂养 0.6 只快乐的温顺浮油生物或 2.4 只野生浮油生物。"
    "1 个不断工作的木料燃烧器可以喂养 5.1 只快乐的温顺浮油生物或 20.4 只野生浮油生物。"
    "1 个不断工作的原油精炼器：可以喂养 15 只浮油生物。相当于 120 只熔岩浮油生物或 240 只浮油生物产出的石油。"
  end
end

defmodule OilFloaterSpecies.OilFloater do
  use OilFloaterSpecies,
    cn_name: "浮油生物",
    en_name: "Slickster",
    baby: "oil_floater_baby",
    baby_cn_name: "浮油生物幼体",
    baby_en_name: "Slickster Larva",
    egg: "oil_floater_egg",
    egg_cn_name: "浮油生物蛋",
    egg_en_name: "Larva Egg"
end

defmodule OilFloaterSpecies.OilFloaterHighTemp do
  use OilFloaterSpecies,
    cn_name: "熔岩浮油生物",
    en_name: "Molten Slickster",
    baby: "oil_floater_high_temp_baby",
    baby_cn_name: "熔岩浮油生物幼体",
    baby_en_name: "Molten Larva",
    egg: "oil_floater_high_temp_egg",
    egg_cn_name: "熔岩浮油生物蛋",
    egg_en_name: "Molten Larva Egg"
end

defmodule OilFloaterSpecies.OilFloaterDecor do
  use OilFloaterSpecies,
    cn_name: "长毛浮油生物",
    en_name: "Longhair Slickster",
    baby: "oil_floater_decor_baby",
    baby_cn_name: "长毛浮油生物幼体",
    baby_en_name: "Longhair Larva",
    egg: "oil_floater_decor_egg",
    egg_cn_name: "长毛浮油生物蛋",
    egg_en_name: "Longhair Larva Egg"
end
