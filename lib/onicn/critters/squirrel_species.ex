alias Onicn.Critters.SquirrelSpecies

defmodule SquirrelSpecies do
  use Onicn.Categories.Critter, [SquirrelSpecies.Squirrel]

  section "简介" do
    "树鼠是一种陆生小动物，常见于森林生态。"
    "树鼠以生长中的乔木树分枝为食，并排泄泥土。"
    "树鼠会翻查储存箱并将少量内容物丢弃在地上。"
    "树鼠和小树鼠在受到攻击后会进行反击。"

    "树鼠会在种子周围约 30 格的范围内判定可种植方格。如果找到可种植的位置，它们会含住相应种子，并前往该位置将其种下。如果周围没有可种植的位置，它们会将种子留在原地。它们也会正常地倒悬种植向下生长的植物。"

    "树鼠可以沿墙壁和天花板移动。它们能够种植例如火椒藤这样的向下生长的植物。"
  end

  section "种植机制" do
    image("pip_planting.png", align: :right, width: 300, height: 300)
    "树鼠会将各种植物种子种植在附近的自然固体方块、土培砖与液培砖中。树鼠不会无限密集地种植植物，它们会判定一个方格是否能够种植植物。具体判定顺序如下："
    "方格必须为固体或砖块；"
    "如果方格存在农地（土培砖、液培砖、种植箱、花盆）则种再农地上。"
    "否则进行野生种植判定:"
    "对自然固体方块，其硬度不能大于 150；"
    "该方格周围不能有 2 株以上的植物；"
    "“周围”指：左侧 6 格、右侧 5 格、上方 5 格、下方 6 格的范围。"
    "判定位置有足够空间容纳相应植物；"
    "对向下生长的植物，判定方向自然向下。"
    "对特定种子，还需满足一些额外判定："
    "针对水草种子进行判定时，基土上方必须有盐水覆盖。"
    "针对乔木橡实进行判定时，基土上方 3x3 的空间必须空出。（但在前往种植后只需空出 1x2 的空间，详见乔木树页面）"
  end

  section "树鼠养殖" do
    "养殖一只树鼠需要消耗 0.3 颗野生的乔木树或 0.08 颗灌溉条件下的乔木树。"
    "一个 96 格的畜舍中最多可以养殖 8 只树鼠，因此种植 3 颗野生乔木树或者 1 颗灌溉条件下的乔木树就够了。"
    "树鼠可以排泄泥土，同时树鼠可以使乔木树中出现乔木橡实，从而支撑更多的乔木树的种植。"
    "树鼠在乔木树的根部就可以吃到这棵树的任意一根树枝。"
  end

  section "小技巧" do
    "树鼠的种植特性可以用于构筑自然保护区或者不消耗资源的农场，常见的种植方式是从上到下，从右到左，隔一种一或者隔三种三。"
    "树鼠不会在上方有建筑的自然土块上播种，并且也不会在上方有建筑蓝图的土块上播种。所以可以通过放置一个优先级为 1 的梯子蓝图来防止树鼠在特定位置播种。"
    "被树鼠种植在农地（土培砖或液培砖）中的植物属于人工栽培植物，需要灌溉与施肥。"
    "所以如果让树鼠进入一个空的农场之中，那么它可能会随意播种，带来一定烦恼。"
    "由于乔木树是一种占地 3x3 的植物，所以复制人不能相邻种植乔木树。但是使用树鼠就可以实现乔木树的相邻密植。"
    "乔木树与树鼠同处一个房间中时，每次乔木树的分枝被拔除时都有概率掉落一颗乔木橡实。"
  end

  section "小细节" do
    "树鼠在被复制人杀死前会出现“宽恕”状态。"
  end
end

defmodule SquirrelSpecies.Squirrel do
  use SquirrelSpecies,
    baby: "squirrel_baby",
    egg: "squirrel_egg"
end
