alias Onicn.Critters.HatchSpecies

defmodule HatchSpecies do
  use Onicn.Categories.Critter, [
    HatchSpecies.Hatch,
    HatchSpecies.HatchVeggie,
    HatchSpecies.HatchHard,
    HatchSpecies.HatchMetal
  ]

  section "简介" do
    "哈奇是夜行动物，白天会钻入地下休眠，夜里出来活动。哈奇无法钻入硬度大于 20 的物质，也无法钻入人造砖块。"
    "哈奇是杂食动物，食谱极其广泛。吃饱后哈奇会排泄出煤炭。"
    "人工饲养的哈奇会比野生的有着更高的新陈代谢速率，因此会更频繁地进食和排泄。当缺乏食物时，野生的哈奇不会饿死，而人工饲养的哈奇会饿死。"
    "好吃哈奇和草质哈奇可以吃食物，但他们只吃几克食物，只能将其转化为几克煤炭。如果想让好吃哈奇为煤炭发电机提供煤炭，那么食物就不是很好的饲料了。"
    "哈奇在液体中会淹死。"
    "所有种类的成年哈奇在受到攻击时会进行反击而小哈奇则不会。"
  end

end

defmodule HatchSpecies.Hatch do
  use HatchSpecies,
    cn_name: "好吃哈奇",
    en_name: "Hatch",
    baby: "hatch_baby",
    baby_cn_name: "小好吃哈奇",
    baby_en_name: "Hatchling",
    egg: "hatch_egg",
    egg_cn_name: "好吃哈奇蛋",
    egg_en_name: "Hatchling Egg"
end

defmodule HatchSpecies.HatchVeggie do
  use HatchSpecies,
    cn_name: "草质哈奇",
    en_name: "Sage Hatch",
    baby: "hatch_veggie_baby",
    baby_cn_name: "小草质哈奇",
    baby_en_name: "Sage Hatchling",
    egg: "hatch_veggie_egg",
    egg_cn_name: "草质哈奇蛋",
    egg_en_name: "Sage Hatchling Egg"
end

defmodule HatchSpecies.HatchHard do
  use HatchSpecies,
    cn_name: "石壳哈奇",
    en_name: "Stone Hatch",
    baby: "hatch_hard_baby",
    baby_cn_name: "小石壳哈奇",
    baby_en_name: "Stone Hatchling",
    egg: "hatch_hard_egg",
    egg_cn_name: "石壳哈奇蛋",
    egg_en_name: "Stone Hatchling Egg"
end

defmodule HatchSpecies.HatchMetal do
  use HatchSpecies,
    cn_name: "光滑哈奇",
    en_name: "Smooth Hatch",
    baby: "hatch_metal_baby",
    baby_cn_name: "小光滑哈奇",
    baby_en_name: "Smooth Hatchling",
    egg: "hatch_metal_egg",
    egg_cn_name: "光滑哈奇蛋",
    egg_en_name: "Smooth Hatchling Egg"
end
