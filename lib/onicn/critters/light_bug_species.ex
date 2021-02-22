alias Onicn.Critters.LightBugSpecies

defmodule LightBugSpecies do
  use Onicn.Categories.Critter, [
    LightBugSpecies.LightBug,
    LightBugSpecies.LightBugOrange,
    LightBugSpecies.LightBugPurple,
    LightBugSpecies.LightBugPink,
    LightBugSpecies.LightBugBlue,
    LightBugSpecies.LightBugBlack,
    LightBugSpecies.LightBugCrystal
  ]
end

defmodule LightBugSpecies.LightBug do
  use LightBugSpecies,
    cn_name: "发光虫",
    en_name: "Shine Bug",
    baby: "light_bug_baby",
    baby_cn_name: "发光虫幼虫",
    baby_en_name: "Shine Nymph",
    egg: "light_bug_egg",
    egg_cn_name: "发光虫卵",
    egg_en_name: "Shine Nymph Egg"
end

defmodule LightBugSpecies.LightBugOrange do
  use LightBugSpecies,
    cn_name: "阳光虫",
    en_name: "Sun Bug",
    baby: "light_bug_orange_baby",
    baby_cn_name: "阳光虫幼虫",
    baby_en_name: "Sun Nymph",
    egg: "light_bug_orange_egg",
    egg_cn_name: "阳光虫卵",
    egg_en_name: "Sun Nymph Egg"
end

defmodule LightBugSpecies.LightBugPurple do
  use LightBugSpecies,
    cn_name: "皇家虫",
    en_name: "Royal Bug",
    baby: "light_bug_purple_baby",
    baby_cn_name: "皇家虫幼虫",
    baby_en_name: "Royal Nymph",
    egg: "light_bug_purple_egg",
    egg_cn_name: "皇家虫卵",
    egg_en_name: "Royal Nymph Egg"
end

defmodule LightBugSpecies.LightBugPink do
  use LightBugSpecies,
    cn_name: "珊瑚虫",
    en_name: "Coral Bug",
    baby: "light_bug_pink_baby",
    baby_cn_name: "珊瑚虫幼虫",
    baby_en_name: "Coral Nymph",
    egg: "light_bug_pink_egg",
    egg_cn_name: "珊瑚虫卵",
    egg_en_name: "Coral Nymph Egg"
end

defmodule LightBugSpecies.LightBugBlue do
  use LightBugSpecies,
    cn_name: "天蓝虫",
    en_name: "Azure Bug",
    baby: "light_bug_blue_baby",
    baby_cn_name: "天蓝虫幼虫",
    baby_en_name: "Azure Nymph",
    egg: "light_bug_blue_egg",
    egg_cn_name: "天蓝虫卵",
    egg_en_name: "Azure Nymph Egg"
end

defmodule LightBugSpecies.LightBugBlack do
  use LightBugSpecies,
    cn_name: "深渊虫",
    en_name: "Abyss Bug",
    baby: "light_bug_black_baby",
    baby_cn_name: "深渊虫幼虫",
    baby_en_name: "Abyss Nymph",
    egg: "light_bug_black_egg",
    egg_cn_name: "深渊虫卵",
    egg_en_name: "Abyss Nymph Egg"
end

defmodule LightBugSpecies.LightBugCrystal do
  use LightBugSpecies,
    cn_name: "光耀虫",
    en_name: "Radiant Bug",
    baby: "light_bug_crystal_baby",
    baby_cn_name: "光耀虫幼虫",
    baby_en_name: "Radiant Nymph",
    egg: "light_bug_crystal_egg",
    egg_cn_name: "光耀虫卵",
    egg_en_name: "Radiant Nymph Egg"
end
