defmodule Onicn.Elements.IronOre do
  use Onicn.Categories.Solid,
    cn_name: "铁矿"
    
  summary "铁矿是一种金属矿石，大量存在于腐蚀区和原油区。"
  
  usage "铁矿的特色是它丰富的储量，使它成为最常用的金属。"
  usage "金属精炼器可以将铁矿精炼成铁。100 千克 铁矿 = 100 千克 铁。"
  usage "碎石机 可以将铁矿粉碎成铁。100 千克 铁矿 = 50 千克 铁 + 50 千克 沙子。这个方法效率太低不建议使用。"
  usage "铁矿可以作为饲料喂食给石壳哈奇，石壳哈奇会排泄出煤炭。喂金属矿石会增加石壳哈奇下光滑哈奇蛋的概率。"
  usage "铁矿可以作为饲料喂食给光滑哈奇，光滑哈奇会排泄出铁。"
  usage "铁矿可以作为饲料喂食给锹环田鼠，锹环田鼠会排泄出整格的质量减半的铁矿石。（不建议）"
  
  production "铁矿是铁锈脱氧机制氧的副产品。750 克/秒 铁锈 + 250 克/秒 盐 = 570 克/秒 氧气 + 30 克/秒 氯气 + 400 克/秒 铁矿。"
end
