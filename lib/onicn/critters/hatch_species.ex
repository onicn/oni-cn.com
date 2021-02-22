alias Onicn.Critters.HatchSpecies

defmodule HatchSpecies do
  use Onicn.Categories.Critter, [
    HatchSpecies.Hatch,
    HatchSpecies.HatchVeggie,
    HatchSpecies.HatchHard,
    HatchSpecies.HatchMetal
  ]
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
