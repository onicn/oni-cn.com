defmodule Onicn.Buildings.Generator do
  use Onicn.Categories.Building

  summary "煤炭发电机燃烧煤发电。"
  summary "煤炭发电机的容量为500千克煤，可以发出300千焦电力，其发电效率为0.6千焦/千克煤。"
  summary "煤炭发电机的电力连接点在下面中间位置。"
  summary "虽然煤炭发电机的美术画有上方排气管，但游戏中它的二氧化碳排放点在下面一排。"

  usage "煤炭发电机是很实用的发电方式。"
  usage "和人力发电机相比，煤炭发电机不需要复制人持续操作。"
  usage "使用智能电池控制之后也能有效节约煤的消耗。"
  usage "和天然气发电机和石油发电机相比，它不需要处理额外的污水。"

  tips "饲养哈奇来保证煤的可持续供应。"
  tips "煤炭发电机不需要氧气即可发电。"
end
