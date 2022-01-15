alias Onicn.Critters.PacuSpecies

defmodule PacuSpecies do
  use Onicn.Categories.Critter, [
    PacuSpecies.Pacu,
    PacuSpecies.PacuCleaner,
    PacuSpecies.PacuTropical
  ]

  section "简介" do
    "帕库鱼是一种水域小动物，不具有攻击性，常自然生成于湿地生态（眼冒金星中为沼泽生态）的污染水池中。它的蛋是帕库鱼卵，死亡时会掉落帕库鱼片。"
    "虽然称为水域动物，但帕库鱼可以在任意一种液体中生存（忽略其它因素，如温度）。"
  end

  section "相关机制" do
    "与其它小动物不同，帕库鱼有几种特殊机制："
    "帕库鱼不能被小动物陷阱捕捉，而只能使用捕鱼陷阱。"
    "帕库鱼不能由照料站驯化。相应地，从喂食器中进食会使其慢慢驯化（最快需要约 7 周期来源请求）"
    "帕库鱼在判定“过度拥挤”状态时，使用的是水域大小而非房间大小。每只帕库鱼需要 8 格液体。"
    "但是，“狭窄”状态的判定仍然使用的是房间大小。"

    "此外，作为水域小动物，帕库鱼还能在一定质量以上的液体中游动。对于水来说，这一阈值是 350 千克。但是，一些证据表明这一行为的判定要素为液体的贴图大小——如果因不同种液体堆叠或上方有建筑吸引导致该液体显示为一整格大小，那么帕库鱼也可以在此游动来源请求。帕库鱼不会游入无法游动的液体格中。如果帕库鱼处于无法游动的方格（包括质量过低的液体方格或气体方格）中，则会出现“挣扎”状态并在地面蹦跳。此时它们会趋向可到达的最近的水池。若没有，则帕库鱼会向任意方向移动。需要注意的是，“挣扎”状态不会令帕库鱼死亡，甚至不会影响其幸福度。因此，挣扎的帕库鱼也可以是快乐的。并且，在此时它们不会进行“过度拥挤”的判定。但是，挣扎的帕库鱼是无法进食的。"
  end

  section "帕库鱼" do
    "体温超过 35 摄氏度时，帕库鱼有更高概率生下热带帕库鱼蛋。 体温低于 5 摄氏度时，帕库鱼有更高概率生下大嘴鱼蛋。"
    "除了原种外，帕库鱼还有另外两个亚种。帕库鱼是一种对温度敏感的生物，只要把它放在一个对应温度的水池中，就会能迅速产生对应亚种。"
  end

  section "热带帕库鱼" do
    "热带帕库鱼适应高温水域。它的装饰值提高到 25，范围半径为 5 格。"
  end

  section "大嘴鱼" do
    "大嘴鱼适应低温水域。它能够以 200 克/秒的速率将污染水净化为水。"
    "养殖大嘴鱼的难点在控温，水温太高，大嘴鱼们会迅速死亡，水温太低，则净化后的水会冻结为冰方块。"
  end

  section "驯化策略" do
    "一只新生的驯化的帕库鱼，即使不喂食，也会在它死前下一颗蛋。这意味着只需要精养一只帕库鱼，确保它不会过度拥挤和饥饿，并将它下的蛋分离到另一个水域，那么放置蛋的水域中的鱼的数量可以无限大，并且不会随着时间的推移而减少。如果散养区的鱼的数量大到一定程度，只需要等待它们自然死亡就可以产生大量的食物。"

    "一只帕库鱼每周期需要食用 140 千克的藻类，这是个非常巨大的数字，至少需要养殖 9 只喷浮飞鱼并通过藻类蒸馏器来转化其排泄的菌泥才能满足。但是如果食用藻类的话， 2 只帕库鱼产生的污染土就足够喂养 1 只抛壳蟹了。"

    "帕库鱼也可以食用种子。但是需要注意的是，不同于帕库鱼每周期都会吃藻类，由于帕库鱼是每 2 周期才食用一次种子，这会导致从喂食器进食的状态并不能一直保持。一只野生的帕库鱼是不能通过食用种子来驯化的。并且，帕库鱼食用种子排泄污染土的速度会大幅下降，如果食用的是种子，那么帕库鱼会以 125 克/周期的速率排泄污染土，这意味着 1120 只帕库鱼才能喂饱一只抛壳蟹。"
  end

  section "保持野生策略" do
    "在水池中投放孵化的帕库鱼幼体，不投喂任何饲料，保持野生状态。野生帕库鱼一生中会生下一个蛋，足以维持自然循环。"
  end
end

defmodule PacuSpecies.Pacu do
  use PacuSpecies,
    cn_name: "帕库鱼",
    en_name: "Pacu",
    baby: "pacu_baby",
    baby_cn_name: "帕库幼鱼",
    baby_en_name: "Pacu Fry",
    egg: "pacu_egg",
    egg_cn_name: "帕库鱼卵",
    egg_en_name: "Fry Egg"
end

defmodule PacuSpecies.PacuCleaner do
  use PacuSpecies,
    cn_name: "大嘴鱼",
    en_name: "Gulp Fish",
    baby: "pacu_cleaner_baby",
    baby_cn_name: "大嘴幼鱼",
    baby_en_name: "Gulp Fry",
    egg: "pacu_cleaner_egg",
    egg_cn_name: "大嘴鱼卵",
    egg_en_name: "Gulp Fry Egg"
end

defmodule PacuSpecies.PacuTropical do
  use PacuSpecies,
    cn_name: "热带帕库鱼",
    en_name: "Tropical Pacu",
    baby: "pacu_tropical_baby",
    baby_cn_name: "热带帕库幼鱼",
    baby_en_name: "Tropical Fry",
    egg: "pacu_tropical_egg",
    egg_cn_name: "热带帕库鱼卵",
    egg_en_name: "Tropical Fry Egg"
end
