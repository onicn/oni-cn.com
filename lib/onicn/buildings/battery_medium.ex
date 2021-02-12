defmodule Onicn.Buildings.BatteryMedium do
  use Onicn.Categories.Building

  summary "巨型电池是电池的升级版本，用于储存多余电力备用。"
  summary "当发电机产生的电力大于电器消耗的电力时，同一电网的巨型电池可以储存多余电力，上限40千焦。"
  summary "当发电机产生的电力小于电器消耗的电力时，巨型电池储存的电力可以供给电网。"
  summary "巨型电池拥有所有电池中最高的电力容量，达40千焦。"
  summary "但其流失速率也是最高的，为每周期2千焦。"

  usage "在游戏早期和中期储存多余电力，后期为智能电池所取代。"
end
