defmodule Onicn.Buildings.LiquidVent do
  use Onicn.Categories.Building

  summary "排液口能够将自液体管道输入的液体排放到世界中。"
  summary "排液口有一个液体输入口，接入液体管道系统后，能够将来自液体管道的液体排放到世界中。"
  summary "如果排液口所在格子的液体压力达到1000千克，排液口因超压而停止工作。"
  summary "如果来自液体管道的液体携带病菌，排放时部分病菌会转移到排液口上。但通常这些病菌会快速死亡也不容易传播，因此可以设置禁止复制人对排液口消毒。"

  usage "用于将液体排放到指定位置如水池内。"

end
