defmodule Onicn.Buildings.StorageLocker do
  use Onicn.Categories.Building

  summary "储存箱可用于储存固体元素。玩家可以选择需要储存的元素种类。"
  summary "储存箱的最大储存容量为20吨，玩家可以手动设定储存容量。"
  summary "储存箱可以选择“仅限打扫”模式。当选择该模式时，只有玩家使用打扫命令清理的元素才会被搬运至储存箱中。"
  summary "当周围气压小于1800克时，如漂白石、氧石、淤泥等会持续挥发气体。"
  summary "当拆卸储存箱或取消储存元素类型时，原有内容物会掉至地上。"

  usage "将储存箱建设在需要或产出元素的建筑附近。"
end
