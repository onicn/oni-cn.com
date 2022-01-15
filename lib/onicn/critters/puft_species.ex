alias Onicn.Critters.PuftSpecies

defmodule PuftSpecies do
  use Onicn.Categories.Critter, [
    PuftSpecies.Puft,
    PuftSpecies.PuftAlpha,
    PuftSpecies.PuftBleachstone,
    PuftSpecies.PuftOxylite
  ]

  section "简介" do
    "喷浮飞鱼是一种可以在空中（包括真空）飞行的小动物，常见于湿地生态。喷浮飞鱼和它的不同亚种以不同的气体作为食物。在吸入对应的气体后，它们会排泄出会对应的固体物质。"
    "喷浮飞鱼无法被捕捉工具选中。但玩家可以通过放置一个小动物放生点（并启用自动捕捉）来使复制人捕捉它们。"
    "喷浮飞鱼（和它的亚种）死后掉落 1 千克（1600 千卡）的肉。"
    "通常，喷浮飞鱼会在吸入两次气体后爬升到房间顶部，并排泄出 1.5 ~ 2.5 千克的对应固体物质。这一过程大约 10 秒进行一次。以喷浮飞鱼为例，这意味着 1 只喷浮飞鱼能以 50 克/秒的速度将污染氧转化为菌泥。由此可见，如果想获得较大的生产速率，则应当限制喷浮飞鱼的行动范围，以避免它们将大量时间浪费在移动上。"
    "如果喷浮飞鱼没有足够的空间升到天花板，它将不会排泄任何东西。这种机制可以通过气动门屋顶规避，它不是固体，所以产物可以穿过喷浮飞鱼到不了的地方，这让喷浮飞鱼可以在当前位置直接排泄。"
    "喷浮飞鱼是非攻击性的小动物——它们不会攻击其它生物，并在受到攻击时会试图逃离。"
    "喷浮飞鱼蛋需要 15 周期来孵化。在孵化器内被孵化时则是 3 周期。"
  end

  section "喷浮飞鱼" do
    "喷浮飞鱼是最常见的野生亚种。它们进食污染氧，并将其 95% 的质量转化为菌泥排泄出来。将它们和疫病章鱼一起饲养可以成为一种再生菌泥的方式。"
    "喷浮飞鱼产变种蛋的概率遵循以下原则："
    "产下喷浮飞鱼蛋的概率从 94% 开始随时间递减；"
    "如果房间内没有贵族飞鱼，那么产下贵族飞鱼蛋的概率从 2% 开始随时间递增；"
    "如果房间内有贵族飞鱼，则产下厚壳飞鱼蛋和净菌飞鱼蛋的概率会从 2% 开始随时间递增。"
  end

  section "贵族飞鱼" do
    "贵族飞鱼主要影响其它喷浮飞鱼的繁衍模式。它们以污染氧、氧气、氯气三种气体为食，并将 10% 的质量转化为对应的固体。由于转化效率很低，一般不会大规模饲养它们来获取上述固体，但为了生产各类转化效率较高的亚种，贵族飞鱼的存在是必要的。"
    "尽管词条中表明贵族飞鱼有 2% 的概率产下贵族飞鱼蛋，但实际上贵族飞鱼只会产下喷浮飞鱼蛋，因为房间内的贵族飞鱼会受自己影响，在它们能够产蛋之前，这 2% 的概率就会随时间递减为 0。这也意味着一般的飞鱼群体内只会有一两只贵族飞鱼"
  end

  section "厚壳飞鱼" do
    "厚壳飞鱼以氧气为食，并将其 95% 的质量转化为氧石排泄出来。后者可以用作火箭的固体氧化剂。这是一种生产氧石的好方式，因为氧石精炼炉工作时会放出大量的热。"
    "厚壳飞鱼产变种蛋的概率遵循以下原则："
    "产下喷浮飞鱼蛋的概率从 31% 开始随时间极缓慢递减；"
    "如果房间内没有贵族飞鱼，那么产下贵族飞鱼蛋的概率从 2% 开始随时间递增；同时，产下厚壳飞鱼蛋的概率会递减；"
    "如果房间内有贵族飞鱼，则产下厚壳飞鱼蛋的概率会从 67% 开始随时间递增；同时，产下贵族飞鱼蛋的概率会递减。"
  end

  section "净菌飞鱼" do
    "净菌飞鱼以氯气为食，并将其 95% 的质量转化为漂白石排泄出来。"
    "净菌飞鱼产变种蛋的概率变化方式与厚壳飞鱼相同。"
  end

  section "养殖喷浮飞鱼" do
    "喷浮飞鱼的养殖最重要的是必须在地板上铺满液体来确保产物不会挥发，以及定期将蛋清理到专用的区域内。"
  end

  section "生产菌泥" do
    "建造一个地上铺有污染水的房间并把喷浮飞鱼放在里面足矣。污染水会排出污染氧，喂饱喷浮飞鱼。单独喂养一只贵族飞鱼来产蛋，可以使保持房间内喷浮飞鱼的高数量更加轻松。"
    "在眼冒金星！中，一个运行中的升华站可以喂养 8 只喷浮飞鱼。"
    "菌泥可以被用作用夜幕菇种植的稳定来源或被蒸馏为藻类。"
  end

  section "生产氧石" do
    "对于厚壳飞鱼，前期的准备除了还需要空气净化器外和喷浮飞鱼一致。它需要更多先进设施来确保氧气从外界稳定输入。"
    "和氧石精炼炉相比，它不需要电力，也不产生额外的热量。"
    "将喷浮飞鱼和贵族飞鱼一起饲养，你有 50% 的概率产出厚壳飞鱼蛋。如果要持续养殖，房间内存在一只贵族飞鱼可以让厚壳飞鱼只产自己的蛋。"
  end

  section "生产漂白石" do
    "养殖净菌飞鱼可以生产漂白石。净菌飞鱼是漂白石的唯一再生途径，而漂白石是培育水草的必要材料。水草只能在水中生长，在纯气体环境中不活跃，所以可以把净菌飞鱼和水草放在一起养殖。一只净菌飞鱼理论上能供给57株水草生长（假如没有任何东西影响生产）。"
    "氯气通常在环境中大量存在且可以从氯气间歇泉中获得。问题在于它的密度（常温下仅低于二氧化碳），而飞鱼有飞到房间顶部的习性，所以养殖场需要气体控制装置，隔气门和可用的气压服存放柜。"
  end
end

defmodule PuftSpecies.Puft do
  use PuftSpecies,
    cn_name: "喷浮飞鱼",
    en_name: "Puft",
    baby: "puft_baby",
    baby_cn_name: "小喷浮飞鱼",
    baby_en_name: "Puftlet",
    egg: "puft_egg",
    egg_cn_name: "喷浮飞鱼蛋",
    egg_en_name: "Puftlet Egg"
end

defmodule PuftSpecies.PuftAlpha do
  use PuftSpecies,
    cn_name: "贵族飞鱼",
    en_name: "Puft Prince",
    baby: "puft_alpha_baby",
    baby_cn_name: "小贵族飞鱼",
    baby_en_name: "Puftlet Prince",
    egg: "puft_alpha_egg",
    egg_cn_name: "贵族飞鱼蛋",
    egg_en_name: "Puftlet Prince Egg"
end

defmodule PuftSpecies.PuftBleachstone do
  use PuftSpecies,
    cn_name: "净菌飞鱼",
    en_name: "Squeaky Puft",
    baby: "puft_bleachstone_baby",
    baby_cn_name: "小净菌飞鱼",
    baby_en_name: "Squeaky Puftlet",
    egg: "puft_bleachstone_egg",
    egg_cn_name: "净菌飞鱼蛋",
    egg_en_name: "Squeaky Puftlet Egg"
end

defmodule PuftSpecies.PuftOxylite do
  use PuftSpecies,
    cn_name: "厚壳飞鱼",
    en_name: "Dense Puft",
    baby: "puft_oxylite_baby",
    baby_cn_name: "小厚壳飞鱼",
    baby_en_name: "Dense Puftlet",
    egg: "puft_oxylite_egg",
    egg_cn_name: "厚壳飞鱼蛋",
    egg_en_name: "Dense Puftlet Egg"
end
