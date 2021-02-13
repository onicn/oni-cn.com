defmodule Onicn.Buildings.MethaneGenerator do
  use Onicn.Categories.Building

  summary "天然气发电机能够将天然气转化为电力。"
  summary "天然气发电机产生的天然气和二氧化碳的温度等同于发电机本身的温度。"
  summary "天然气发电机产生的污水在最下一排，从右往左的第二格。"

  usage "每局游戏保证至少有一座天然气间歇泉，因而天然气发电机是游戏中期的主要发电方式。"
  usage "天然气发电机会向环境排放污水，需要配套设施处理。"
  usage "建议使用网格砖让污染水滴落，然后收集并处理之。"

  tips "鉴于天然气发电机的产物温度等同于发电机本身温度，保持发电机所在区域处于低温能够节约很多将产物再次冷却的麻烦。"
end
