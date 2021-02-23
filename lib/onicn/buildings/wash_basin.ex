defmodule Onicn.Buildings.WashBasin do
  use Onicn.Categories.Building

  section "简介" do
    "洗手盆可以用水移除路过的复制人表面的病菌（120000个），生成污染水。移除的病菌被转移到污染水中。当污染水到达200千克，会掉到地上。"
    "可以指定复制人路过需要洗手的方向。"
  end

  section "小技巧" do
    "一般可以放在厕所外侧或烹饪区外侧。"
  end
end
