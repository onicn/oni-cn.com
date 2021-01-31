gases = [
  {"AluminumGas", "气态铝"},
  {"CarbonDioxide", "二氧化碳"},
  {"CarbonGas", "气态碳"},
  {"ChlorineGas", "氯气"},
  {"ContaminatedOxygen", "污染氧"},
  {"CopperGas", "气态铜"},
  {"GoldGas", "气态金"},
  {"Hydrogen", "氢气"},
  {"IronGas", "气态铁"},
  {"LeadGas", "气态铅"},
  {"Methane", "天然气,"},
  {"NiobiumGas", "气态铌"},
  {"Oxygen", "氧气"},
  {"PhosphorusGas", "气态磷"},
  {"SaltGas", "气态盐"},
  {"SourGas", "高硫天然气"},
  {"Steam", "蒸汽"},
  {"SteelGas", "气态钢"},
  {"SulfurGas", "气态硫"},
  {"SuperCoolantGas", "气态超级冷却剂"},
  {"TungstenGas", "气态钨"},
  {"EthanolGas", "乙醇气体"}
]

# Enum.each(gases, fn {gas, cn_name} ->
#   content = ~s|defmodule Onicn.Elements.#{gas} do
#     use Onicn.Categories.Gas,
#     cn_name: "#{cn_name}"
#   end|

#   File.write!("../../lib/onicn/elements/#{Macro.underscore(gas)}.ex", content)
# end)


liquids = [
  "Brine",
  "Chlorine",
  "CrudeOil",
  "DirtyWater",
  "LiquidCarbonDioxide",
  "LiquidHydrogen",
  "LiquidMethane",
  "LiquidOxygen",
  "LiquidPhosphorus",
  "LiquidSulfur",
  "Magma",
  "MoltenAluminum",
  "MoltenCarbon",
  "MoltenCopper",
  "MoltenGlass",
  "MoltenGold",
  "MoltenIron",
  "MoltenLead",
  "MoltenNiobium",
  "MoltenSalt",
  "MoltenSteel",
  "MoltenTungsten",
  "Naphtha",
  "Petroleum",
  "SaltWater",
  "SuperCoolant",
  "ViscoGel",
  "Water",
  "Ethanol"
]

trans = [
  "浓盐水",
  "液态氯",
  "原油",
  "污染水",
  "液体二氧化碳",
  "液态氢",
  "液态甲烷",
  "液态氧",
  "液态磷",
  "液态硫",
  "岩浆",
  "熔融铝",
  "熔融碳",
  "熔融铜",
  "熔融玻璃",
  "熔融金",
  "熔融铁",
  "熔融铅",
  "熔融铌",
  "熔融盐",
  "熔融钢",
  "熔融钨",
  "石脑油",
  "石油",
  "盐水",
  "超级冷却剂",
  "粘性凝胶",
  "水",
  "乙醇"
]

# Enum.zip(liquids, trans)
# |> Enum.each(fn {liquid, cn_name} ->
#   content = ~s|defmodule Onicn.Elements.#{liquid} do
#     use Onicn.Categories.Liquid,
#     cn_name: "#{cn_name}"
#   end|

#   File.write!("../../lib/onicn/elements/#{Macro.underscore(liquid)}.ex", content)
# end)


solids = [
  {"Aerogel", "气凝胶"},
  {"Algae", "藻类"},
  {"Aluminum", "铝"},
  {"AluminumOre", "铝矿"},
  {"BleachStone", "漂白石"},
  {"BrineIce", "浓盐冰"},
  {"Carbon", "煤炭"},
  {"Ceramic", "陶瓷"},
  {"Clay", "粘土"},
  {"Copper", "铜"},
  {"CrushedIce", "碎冰"},
  {"Cuprite", "铜矿"},
  {"Diamond", "钻石"},
  {"Dirt", "泥土"},
  {"DirtyIce", "污染冰"},
  {"Electrum", "金银矿"},
  {"EnrichedUranium", "浓缩铀"},
  {"Fertilizer", "肥料"},
  {"FoolsGold", "黄铁矿"},
  {"Fossil", "化石"},
  {"Fullerene", "富勒烯"},
  {"Glass", "玻璃"},
  {"Gold", "金"},
  {"GoldAmalgam", "金汞齐"},
  {"Granite", "花岗岩"},
  {"Ice", "冰"},
  {"IgneousRock", "火成岩"},
  {"Iron", "铁"},
  {"IronOre", "铁矿"},
  {"Isoresin", "异构树脂"},
  {"Katairite", "深渊晶石"},
  {"Lead", "铅"},
  {"Lime", "石灰"},
  {"MaficRock", "镁铁质岩"},
  {"Niobium", "铌"},
  {"Obsidian", "黑曜石"},
  {"OxyRock", "氧石"},
  {"Phosphorite", "磷矿"},
  {"Phosphorus", "固态磷"},
  {"Polypropylene", "塑料"},
  {"RefinedCarbon", "精炼碳"},
  {"Regolith", "浮土"},
  {"Rust", "铁锈"},
  {"Salt", "盐"},
  {"Sand", "沙子"},
  {"SandCement", "砂水泥"},
  {"SandStone", "砂岩"},
  {"SedimentaryRock", "沉积岩"},
  {"SlimeMold", "菌泥"},
  {"Snow", "雪"},
  {"SolidCarbonDioxide", "固态二氧化碳"},
  {"SolidChlorine", "固态氯"},
  {"SolidCrudeOil", "固态原油"},
  {"SolidHydrogen", "固态氢"},
  {"SolidMercury", "固态汞"},
  {"SolidMethane", "固态甲烷"},
  {"SolidNaphtha", "固态石脑油"},
  {"SolidOxygen", "固态氧"},
  {"SolidPetroleum", "固态石油"},
  {"SolidPropane", "固态丙烷"},
  {"SolidSuperCoolant", "超级冷却剂"},
  {"SolidViscoGel", "粘性凝胶"},
  {"Steel", "钢"},
  {"Sulfur", "硫"},
  {"SuperInsulator", "隔热质"},
  {"TempConductorSolid", "导热质"},
  {"ToxicSand", "污染土"},
  {"Tungsten", "钨"},
  {"Unobtanium", "中子物质"},
  {"Wolframite", "钨锰铁矿"},
  {"SolidEthanol", "固态乙醇"}
]


Enum.zip(solids, trans)
|> Enum.each(fn {solid, cn_name} ->
  content = ~s|defmodule Onicn.Elements.#{solid} do
    use Onicn.Categories.Solid,
    cn_name: "#{cn_name}"
  end|

  File.write!("../../lib/onicn/elements/#{Macro.underscore(solid)}.ex", content)
end)
