alias Onicn.Critters.SquirrelSpecies

defmodule SquirrelSpecies do
  use Onicn.Categories.Critter, [SquirrelSpecies.Squirrel]
end

defmodule SquirrelSpecies.Squirrel do
  use SquirrelSpecies,
    cn_name: "树鼠",
    en_name: "Pip",
    baby: "squirrel_baby",
    baby_cn_name: "小树鼠",
    baby_en_name: "Pipsqueak",
    egg_cn_name: "树鼠蛋",
    egg_en_name: "Pip Egg"
end
