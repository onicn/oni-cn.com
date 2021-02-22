alias Onicn.Critters.PacuSpecies

defmodule PacuSpecies do
  use Onicn.Categories.Critter, [
    PacuSpecies.Pacu,
    PacuSpecies.PacuCleaner,
    PacuSpecies.PacuTropical
  ]
end

defmodule PacuSpecies.Pacu do
  use PacuSpecies,
    cn_name: "帕库鱼",
    en_name: "Pacu",
    baby: "pacu_baby",
    baby_cn_name: "帕库幼鱼",
    baby_en_name: "Pacu Fry",
    egg_cn_name: "帕库鱼卵",
    egg_en_name: "Fry Egg"
end

defmodule PacuSpecies.PacuCleaner do
  use PacuSpecies,
    cn_name: "大嘴鱼",
    en_name: "Gulp Fish",
    baby: "pacu_cleaner_baby",
    baby_cn_name: "大嘴幼鱼",
    baby_en_name: "Gulp Fry",
    egg_cn_name: "大嘴鱼卵",
    egg_en_name: "Gulp Fry Egg"
end

defmodule PacuSpecies.PacuTropical do
  use PacuSpecies,
    cn_name: "热带帕库鱼",
    en_name: "Tropical Pacu",
    baby: "pacu_tropical_baby",
    baby_cn_name: "热带帕库幼鱼",
    baby_en_name: "Tropical Fry",
    egg_cn_name: "热带帕库鱼卵",
    egg_en_name: "Tropical Fry Egg"
end
