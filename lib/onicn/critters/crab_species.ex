alias Onicn.Critters.CrabSpecies

defmodule CrabSpecies do
  use Onicn.Categories.Critter, [
    CrabSpecies.Crab
  ]
end

defmodule CrabSpecies.Crab do
  use CrabSpecies,
    cn_name: "抛壳蟹",
    en_name: "Pokeshell",
    baby: "crab_baby",
    baby_cn_name: "抛壳蟹幼体",
    baby_en_name: "Pokeshell Spawn",
    egg: "crab_egg",
    egg_cn_name: "抛壳蟹卵",
    egg_en_name: "Pinch Roe"
end
