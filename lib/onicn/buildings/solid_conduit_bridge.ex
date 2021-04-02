defmodule Onicn.Buildings.SolidConduitBridge do
  use Onicn.Categories.Building

  section "简介" do
    "运输轨桥能够让一根运输轨道跨过另一根运输轨道，避免两条轨道连通。"
    "运输轨桥拥有一个输入口和一个输出口，可以和运输轨道相连接，可以旋转90度。"
    "运输轨桥中间的格子可以跨过其他的运输轨道。"
    "和液体管桥与气体管桥类似，可以穿过砖块和建筑物。"
    "运输轨桥不存储物质，也不和经过的物质发生热交换。"
    "建造需要复制人拥有机电工程技能。"
  end
end
