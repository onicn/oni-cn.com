defmodule Onicn.Buildings.Electrolyzer do
  use Onicn.Categories.Building
  
  summary "电解器能够将水电解为氢气和氧气，是游戏中主要的制氧方式。"
  summary "水中携带的病菌会转移到产生的氧气里。"
  summary "会在气压过大时停止运行。"

  usage "电解器是游戏中主要的制氧方式。"
  usage "封闭电解：本方案是建造一间封闭的电解室，在电解器上方和下方各布置一个气泵。因为氢气比氧气轻，上方的气泵会输出氢气和氧气，下方的气泵只输出氧气。上方的气泵再连接一个气体过滤器来分流氢气和氧气。多余的氢气可以供给氢气发电机。氧气可以沿管道送至基地各处。此方案可以按需精准供氧。"
  usage "开放电解：本方案是在开放区域放置电解器，让氢气和氧气自由流通。此方案可以省下气泵、气体过滤器所需的电力。"
  
  tips "电解出来的氢气和氧气至少为70摄氏度，玩家需要使用某种制冷方案冷却之。"
  tips "由于水的来源比藻类更多，在前期用藻类制氧，但是在藻类消耗完之前要转为电解器制氧。"
  
end
