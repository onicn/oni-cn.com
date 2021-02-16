defmodule Onicn.Buildings.CreatureDeliveryPoint do
  use Onicn.Categories.Building

  summary "小动物放生点能够让复制人把捕获的动物带到放生点放生。"
  summary "使用捆绑捕获的动物或是由小动物陷阱捕获的动物都可以在放生点放生。"
  summary "放生点可以设定房间的最大动物容量。当已有动物数量大于等于该设定容量时，复制人不会把动物带到该放生点。"
  summary "放生点可以选择想要放生的动物类型。注意只有在世界中已经遇到的动物类型才会出现在候选列表里。"

  usage "在饲养室中布置放生点。选择动物类型，并设定动物数量。"

  tips "在原油区饲养浮油生物时，应使用金汞齐以避免建筑过热。"
end
