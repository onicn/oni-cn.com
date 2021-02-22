alias Onicn.Critters.PuftSpecies

defmodule PuftSpecies do
  use Onicn.Categories.Critter, [
    PuftSpecies.Puft,
    PuftSpecies.PuftAlpha,
    PuftSpecies.PuftBleachstone,
    PuftSpecies.PuftOxylite
  ]
end

defmodule PuftSpecies.Puft do
  use PuftSpecies,
    cn_name: "喷浮飞鱼",
    en_name: "Puft",
    baby: "puft_baby",
    baby_cn_name: "小喷浮飞鱼",
    baby_en_name: "Puftlet",
    egg: "puft_egg",
    egg_cn_name: "喷浮飞鱼蛋",
    egg_en_name: "Puftlet Egg"
end

defmodule PuftSpecies.PuftAlpha do
  use PuftSpecies,
    cn_name: "贵族飞鱼",
    en_name: "Puft Prince",
    baby: "puft_alpha_baby",
    baby_cn_name: "小贵族飞鱼",
    baby_en_name: "Puftlet Prince",
    egg: "puft_alpha_egg",
    egg_cn_name: "贵族飞鱼蛋",
    egg_en_name: "Puftlet Prince Egg"
end

defmodule PuftSpecies.PuftBleachstone do
  use PuftSpecies,
    cn_name: "净菌飞鱼",
    en_name: "Squeaky Puft",
    baby: "puft_bleachstone_baby",
    baby_cn_name: "小净菌飞鱼",
    baby_en_name: "Squeaky Puftlet",
    egg: "puft_bleachstone_egg",
    egg_cn_name: "净菌飞鱼蛋",
    egg_en_name: "Squeaky Puftlet Egg"
end

defmodule PuftSpecies.PuftOxylite do
  use PuftSpecies,
    cn_name: "厚壳飞鱼",
    en_name: "Dense Puft",
    baby: "puft_oxylite_baby",
    baby_cn_name: "小厚壳飞鱼",
    baby_en_name: "Dense Puftlet",
    egg: "puft_oxylite_egg",
    egg_cn_name: "厚壳飞鱼蛋",
    egg_en_name: "Dense Puftlet Egg"
end
