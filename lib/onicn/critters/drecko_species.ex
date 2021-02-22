alias Onicn.Critters.DreckoSpecies

defmodule DreckoSpecies do
  use Onicn.Categories.Critter, [
    DreckoSpecies.Drecko,
    DreckoPlastic
  ]
end

defmodule DreckoSpecies.Drecko do
  use DreckoSpecies,
    cn_name: "毛鳞壁虎",
    en_name: "Drecko",
    baby: "drecko_baby",
    baby_cn_name: "小毛鳞壁虎",
    baby_en_name: "Drecklet",
    egg_cn_name: "毛鳞壁虎蛋",
    egg_en_name: "Drecklet Egg"
end

defmodule DreckoSpecies.DreckoPlastic do
  use DreckoSpecies,
    cn_name: "滑鳞壁虎",
    en_name: "Glossy Drecko",
    baby: "drecko_plastic_baby",
    baby_cn_name: "小滑鳞壁虎",
    baby_en_name: "Glossy Drecklet",
    egg_cn_name: "滑鳞壁虎蛋",
    egg_en_name: "Glossy Drecklet Egg"
end
