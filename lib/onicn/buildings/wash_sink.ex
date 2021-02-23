defmodule Onicn.Buildings.WashSink do
  use Onicn.Categories.Building

  section "简介" do
    "洗手池可以用水移除路过的复制人表面的病菌（120000个），生成污染水。移除的病菌被转移到污染水中。"
    "可以指定复制人路过需要洗手的方向。"
    "跟洗手盆类似，但是通过管道输入输出液体，避免了复制人搬运工作。"
    "每次用水5千克。实际测试中可能会多出一点点。"
  end

  section "小技巧" do
    "即使输入的水里含有病菌，也可以移除复制人的病菌。"
    "输入其它种类的液体会导致洗手池损坏。"
  end
end
