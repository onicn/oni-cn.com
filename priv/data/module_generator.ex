gases = [
  {"AluminumGas", "气态铝"},
  {"CarbonDioxide", "二氧化碳"},
  {"CarbonGas", "气态碳"},
  {"ChlorineGas", "氯气"},
  {"ContaminatedOxygen", "污染氧"},
  {"CopperGas", "气态铜"},
  {"GoldGas", "气态金"},
  {"Hydrogen", "氢气,"},
  {"IronGas", "气态铁"},
  {"LeadGas", "气态铅"},
  {"Methane", "天然气,"},
  {"NiobiumGas", "气态铌"},
  {"Oxygen", "氧气,"},
  {"PhosphorusGas", "气态磷"},
  {"SaltGas", "气态盐"},
  {"SourGas", "高硫天然气"},
  {"Steam", "蒸汽,"},
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

Enum.zip(liquids, trans)
|> Enum.each(fn {liquid, cn_name} ->
  content = ~s|defmodule Onicn.Elements.#{liquid} do
    use Onicn.Categories.Liquid,
    cn_name: "#{cn_name}"
  end|

  File.write!("../../lib/onicn/elements/#{Macro.underscore(liquid)}.ex", content)
end)


solids = [
]
