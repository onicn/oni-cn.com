alias Onicn.Critters.MoleSpecies

defmodule MoleSpecies do
  use Onicn.Categories.Critter, [MoleSpecies.Mole]
end

defmodule MoleSpecies.Mole do
  use MoleSpecies,
    cn_name: "锹环田鼠",
    en_name: "Shove Vole",
    baby: "mole_baby",
    baby_cn_name: "锹环田鼠幼体",
    baby_en_name: "Vole Pup",
    egg: "mole_egg",
    egg_cn_name: "锹环田鼠蛋",
    egg_en_name: "Shove Vole Egg"
end
