defmodule Onicn.Buildings.PowerTransformer do
  use Onicn.Categories.Building

  section "简介" do
    "大功率转变器是电力变压器的高级版本，可以支持4千瓦的低负载电网。"
    "参见功率转变器。"
    "大功率转变器的低负载端通常连接导电线。"
    "虽然大功率转变器可以支持4千瓦负载，但导电线只能支持2千瓦负载。"
  end

  section "用途" do
    "连接高负载电网和低负载电网（限制为2千瓦）。"
  end

  section "小技巧" do
    "电池应放置于高负载电网，而非低负载电网。"
    "电池充电速率无限制，会导致低负载电网迅速过载。"
  end
end
