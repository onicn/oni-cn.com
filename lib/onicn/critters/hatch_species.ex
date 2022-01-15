alias Onicn.Critters.HatchSpecies

defmodule HatchSpecies do
  use Onicn.Categories.Critter, [
    HatchSpecies.Hatch,
    HatchSpecies.HatchVeggie,
    HatchSpecies.HatchHard,
    HatchSpecies.HatchMetal
  ]

  section "简介" do
    "哈奇是夜行动物，白天会钻入地下休眠，夜里出来活动。哈奇无法钻入硬度大于 20 的物质，也无法钻入人造砖块。"
    "哈奇是杂食动物，食谱极其广泛。吃饱后哈奇会排泄出煤炭。"
    "好吃哈奇和草质哈奇可以吃食物，但他们只吃几克食物，只能将其转化为几克煤炭。如果想让好吃哈奇为煤炭发电机提供煤炭，那么食物就不是很好的饲料了。"
    "所有种类的成年哈奇在受到攻击时会进行反击而小哈奇则不会。"
    "它们可能会被淹死，或被复制人攻击而死。"
    "人工饲养的比野生的有着更高的新陈代谢速率，因此会更频繁地进食和排泄。当缺乏食物时，野生的不会饿死，而人工饲养的会饿死。"
  end

  section "亚种" do
    "进食沉积岩时，更高概率生下石壳哈奇的蛋。"
    "进食泥土时，更高概率生下草质哈奇的蛋。"
    "进食金属矿石时，更高概率生下光滑哈奇的蛋。"
  end

  section "草质哈奇" do
    "草质哈奇的体色是绿色。它的食谱是有机物和食物，排泄煤炭。"
    "草质哈奇完全不受病菌或腐败的影响，可以消耗不可食用的或复制人不能食用的有机物。"
    "草质哈奇有着所有亚种中最高的煤炭转化率。它能将 100% 的进食质量转化为煤炭。"
    "当尝试“肉食主义者”或“土食主义者”成就时，草质哈奇是一种利用无用泥土和肥料的方法。"
  end

  section "石壳哈奇" do
    "石壳哈奇有着灰色、厚重的石质外壳。它的食谱是矿物原料和金属矿石，排泄煤炭。"
    "这一亚种比好吃哈奇更为坚硬，具有更多的生命，攻击它可能会使一名复制人受轻度伤。"
  end

  section "光滑哈奇" do
    "光滑哈奇有着幽深的钴蓝色。它只吃金属矿石。"
    "和前三个亚种不同，它排泄和进食的金属矿石相对应的精炼金属，其质量为进食质量的 75%。"
    "它也比好吃哈奇生命更高，攻击它可能会使一名复制人受中度伤。"
  end

  section "肉蛋养殖" do
    "在生存难度设置（默认设置）下，复制人每周期需要 1000 千卡。一个好吃哈奇在死亡时可提供 2000 克肉，相当于 3200 千卡的食物，在烧烤后可提供 4000 千卡的食物。"
    "快乐的好吃哈奇需要 5.88 个周期才能下蛋，相当于每周期 544 千卡肉（或 680 千卡烤肉串），理论上每个复制人需要 1.838（或 1.47）只好吃哈奇。快乐的好吃哈奇可以在其整个成年期（95 天）内产下 16 个蛋，其中 1 个蛋将需要重新填充畜舍；在一个好吃哈奇占据一个畜舍的整个 100 个周期中，它将为殖民地提供 15 个好吃哈奇。这是每周期 480 千卡肉（或 600 千卡烤肉串），这意味着每个复制人需要 2.08 （或 1.67）个哈好吃奇。"
    "一个蛋可以用打蛋桌打成 1000 克生蛋，可以变成 2800 千卡 的煎蛋卷卷。这是每天 420 千卡，每个复制人需要 2.38 个好吃哈奇。每个畜舍大约少喂 0.5 次（或少喂 1.5 次），但需要更多的空间，却可以在没有自动化的游戏早期完成。"
    "这些蛋需要转移到另一个房间进行孵化，这样它们就不会阻碍好吃哈奇下蛋的速度。如果不使用孵化器，在第一次吃肉之前会有很长的等待时间。"
  end

  section "产煤" do
    "目标是让好吃（石壳）哈奇快速地生产煤炭。每台煤炭发电机在持续运行时，每周期消耗 600 千克煤炭。"
    "需要 8.5 个驯服且快乐的好吃（石壳）哈奇，使每个周期生产 600 千克煤炭，但一个畜舍最多可容纳 8 个好吃哈奇。"
    "从理论上讲，一台煤炭发电机需要不止一个畜舍来持续提供煤炭。但通常煤炭发电机不需要一直运行，因此实际需求可能会更少。"
    "如果地图上有一座火山，岩浆冷却成火成岩，作为石壳哈奇的饲料，是一种煤炭的可再生方式。"
  end

  section "精炼金属" do
    "光滑哈奇可以精炼金属矿石，精炼效率比碎岩机高，比金属精炼器低。"
    "虽然养殖一个光滑哈奇需要一些投资，但一旦养殖成功，它们可以提供可靠的精炼金属来源，不需要电力和时间，除了在需要时进行梳理外，也不会产生大量热量。"
    "仔细估计你需要多少精炼金属，并且应该管理报告光滑哈奇的数量，除非你想发现自己的金属矿石用完了。 3-4 只光滑哈奇可以生产足够的精炼金属，满足大多游戏早期的需要。"
    "它也像其他好吃哈奇亚种一样下蛋，尽管在收获成年光滑哈奇肉时必须小心谨慎。如果光滑哈奇也被用于生产肉类，建议使用溺水室。"
  end

end

defmodule HatchSpecies.Hatch do
  use HatchSpecies,
    cn_name: "好吃哈奇",
    en_name: "Hatch",
    baby: "hatch_baby",
    baby_cn_name: "小好吃哈奇",
    baby_en_name: "Hatchling",
    egg: "hatch_egg",
    egg_cn_name: "好吃哈奇蛋",
    egg_en_name: "Hatchling Egg"
end

defmodule HatchSpecies.HatchVeggie do
  use HatchSpecies,
    cn_name: "草质哈奇",
    en_name: "Sage Hatch",
    baby: "hatch_veggie_baby",
    baby_cn_name: "小草质哈奇",
    baby_en_name: "Sage Hatchling",
    egg: "hatch_veggie_egg",
    egg_cn_name: "草质哈奇蛋",
    egg_en_name: "Sage Hatchling Egg"
end

defmodule HatchSpecies.HatchHard do
  use HatchSpecies,
    cn_name: "石壳哈奇",
    en_name: "Stone Hatch",
    baby: "hatch_hard_baby",
    baby_cn_name: "小石壳哈奇",
    baby_en_name: "Stone Hatchling",
    egg: "hatch_hard_egg",
    egg_cn_name: "石壳哈奇蛋",
    egg_en_name: "Stone Hatchling Egg"
end

defmodule HatchSpecies.HatchMetal do
  use HatchSpecies,
    cn_name: "光滑哈奇",
    en_name: "Smooth Hatch",
    baby: "hatch_metal_baby",
    baby_cn_name: "小光滑哈奇",
    baby_en_name: "Smooth Hatchling",
    egg: "hatch_metal_egg",
    egg_cn_name: "光滑哈奇蛋",
    egg_en_name: "Smooth Hatchling Egg"
end
