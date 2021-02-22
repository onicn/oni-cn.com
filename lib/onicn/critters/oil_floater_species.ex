alias Onicn.Critters.OilFloaterSpecies

defmodule OilFloaterSpecies do
  use Onicn.Categories.Critter, [
    OilFloaterSpecies.OilFloater,
    OilFloaterSpecies.OilFloaterHighTemp,
    OilFloaterSpecies.OilFloaterDecor
  ]
end

defmodule OilFloaterSpecies.OilFloater do
  use OilFloaterSpecies,
    cn_name: "浮油生物",
    en_name: "Slickster",
    baby: "oil_floater_baby",
    baby_cn_name: "浮油生物幼体",
    baby_en_name: "Slickster Larva",
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
    egg_cn_name: "长毛浮油生物蛋",
    egg_en_name: "Longhair Larva Egg"
end
