defmodule Onicn.Elements.Gold do
  use Onicn.Categories.Solid,
    cn_name: "金"

  summary "金是一种精炼金属，由金汞齐精炼而得。"

  usage "作为一种建筑材料，金可以用作建造各种高级电力系统、建筑和自动化系统。它的装饰+50%的奖励尤其适合建造与装饰相关的建筑。"

  usage "分子熔炉能够将#{Onicn.Elements.Fullerene.output(:link_name_icon)}、金和#{
          Onicn.Elements.Petroleum.output(:link_name_icon)
        }合成#{Onicn.Elements.SuperCoolant.output(:link_name_icon)}。1 千克 富勒烯 + 49.5 千克 金 + 49.5 千克 石油 = 100 千克 超级冷却剂。"

  usage "氧石精炼炉能够将金和氧气合成氧石。600 克/秒 氧气 + 3 克/秒 金 = 600 克/秒 氧石。"

  production "金属精炼器能够将金汞齐精炼成金。100 千克 金汞齐 = 100 千克 金。"
  production "当将金汞齐喂食给光滑哈奇时，光滑哈奇会排泄出金。此法约有75%的生产效率。"
  production "碎石机能够将金汞齐粉碎成金和沙子。100 千克 金汞齐 = 50 千克 金 + 50 千克 沙子。"

  tips "在所有精炼金属中，金有着最高的装饰奖励（+50%），尤其适合建造先进电力系统。"
end
