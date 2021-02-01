defmodule Onicn.Elements.ChlorineGas do
  use Onicn.Categories.Gas,
    cn_name: "氯气"

  summary "氯气是一种不可呼吸的气体，常见于腐蚀区。"

  usage "氯气的主要功效是杀菌用。建造一个密封的氯气室，将需要杀菌的物质储存在其中一整个周期，可以完全杀灭所有细菌。"
  usage "种植芳香百合需要氯气环境。芳香百合本身不消耗氯气。"
  usage "贵族飞鱼和净菌飞鱼能够呼吸氯气，排泄出漂白石。"
  usage "矿石洗涤器需要氯气才能工作。"
  usage "种植释气草每周期需要灌溉 500 克液态氯。"
  usage "种植沙盐藤需要氯气环境，且会消耗氯气，速率为 6 克/秒。"

  production "腐蚀区存在大量氯气。"
  production "铁锈脱氧机产生氯气作为副产品。750 克/秒 铁锈 + 250 克/秒 盐 = 570 克/秒 氧气 + 30 克/秒 氯气 + 400 克/秒 铁矿。"
  production "当气压小于 1800 克时，被挖掘的漂白石持续释放出氯气。"
  production "氯气喷孔定期喷发出氯气。"
end
