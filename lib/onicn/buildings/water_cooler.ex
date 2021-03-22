defmodule Onicn.Buildings.WaterCooler do
  use Onicn.Categories.Building

  section "简介" do
    "饮水机属于娱乐建筑，复制人在休息时间可进行使用。"
    "使用后获得“社交”状态，效果为增加1点士气，持续1.1周期。"
    "饮水机每次使用消耗1千克水。"
  end

  section "小技巧" do
    "需要配合手压泵产生瓶装水，需要复制人搬运。"
    "如果输入的水中含有食物中毒病菌，复制人使用后可能会食物中毒。"
    "早期可以用于形成高级餐厅，即使被禁用也不影响房间形成，因为性价比极低通常在建造完成后就会被禁用。"
    "作为娱乐建筑，比较适合放置在娱乐室里。但是娱乐室并不提供任何加成，只是提供一个社交场所让休息的复制人聚集在一起。"
    "士气加成状态期间复制人会优先使用其它娱乐建筑，没有其它娱乐建筑时也可能再次使用该建筑。"
  end
end
