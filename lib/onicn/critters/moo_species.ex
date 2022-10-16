alias Onicn.Critters.MooSpecies

defmodule MooSpecies do
  use Onicn.Categories.Critter, [MooSpecies.Moo]

  section "简介" do
    "释气海牛是一种无攻击性的外星生物，其食物是释气草，排泄物为天然气。死亡后，它会掉落 10 千克（16000 千卡）的肉它没有对应的蛋或幼体，不能进行繁殖。"
    "在本体游戏中，释气海牛只能从星图上的有机质体上获得，需要发射有生物货舱的火箭将其运回。释气海牛在基地中无法繁殖。要获得新的释气海牛必须再次发射火箭。"
    "除了达成成就外，养殖性价比很低。"
  end
end

defmodule MooSpecies.Moo do
  use MooSpecies
end
