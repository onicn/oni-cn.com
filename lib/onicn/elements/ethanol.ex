defmodule Onicn.Elements.Ethanol do
  use Onicn.Categories.Liquid,
    cn_name: "乙醇"
    
  summary "乙醇提取自木料，可用于发电。"
  
  usage "石油发电机能够燃烧乙醇发电。2 千克/秒 石油 或 乙醇 = 2 千瓦 电力 + 500 克/秒 二氧化碳 + 750 克/秒 污染水。"
  usage "人工种植小吃芽需要每周期灌溉20千克乙醇。"
  usage "乙醇热传导率较低，可减缓热传递。凝固点较低，多使用于低温环境。"
  usage "由于乙醇和乙醇气体之间存在比热容差异，不断蒸发和凝结乙醇有消灭热量的效果。"
  
  production "铁锈区有天然存在的乙醇。"
  production "乙醇蒸馏器能够从木料中蒸馏出乙醇。1 千克/秒 木料 = 500 克/秒 乙醇 + 333.33 克/秒 污染土 + 166.67 克/秒 二氧化碳。"
end
