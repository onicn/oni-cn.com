defmodule Onicn.Buildings.PetroleumGenerator do
  use Onicn.Categories.Building

  summary "石油发电机消耗石油或者乙醇产生电力。产出污染水和二氧化碳。"
  summary "产出污染水最低温度为40摄氏度，二氧化碳最低温度为110摄氏度。如果发电机温度更高，产出物温度也会更高。"
  summary "污染水的排出位置为右下角的格子。"
end
