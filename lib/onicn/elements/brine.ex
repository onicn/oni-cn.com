defmodule Onicn.Elements.Brine do
  use Onicn.Categories.Liquid,
    cn_name: "浓盐水"
    
  summary "浓盐水是高浓度的盐水。"
  
  usage "脱盐器能够将浓盐水淡化成水和盐。5 千克/秒 浓盐水 = 3.5 千克/秒 水 + 1.5 千克/秒 盐。"
  usage "将浓盐水加热至104.75摄氏度（沸点+2摄氏度）会形成蒸汽（70%质量）和盐（30%质量）。"
  
  production "盐池区在低温下会天然生成浓盐水。"
  production "将盐水降温至-9.5摄氏度（冰点-2摄氏度）会形成冰（77%质量）和浓盐水（23%质量）。"
  production "融化浓盐冰可以产出浓盐水。"
end
