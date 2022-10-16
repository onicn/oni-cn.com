alias Onicn.Critters.MoleSpecies

defmodule MoleSpecies do
  use Onicn.Categories.Critter, [MoleSpecies.Mole]

  section "简介" do
    "锹环田鼠是一种钻地动物，常见于太空生态。它们进食大量浮土，提供肉和蛋。锹环田鼠能够被饲养。"

    "锹环田鼠能够钻入地面，由精炼金属建造的金属砖或硬度大于等于 150 的物质（深渊晶石、黑钨矿、钨、钻石、黑曜石、隔热质、富勒烯、中子物质、铀矿眼冒金星图标、浓缩铀眼冒金星图标、贫铀眼冒金星图标、堆芯熔融物眼冒金星图标）除外。锹环田鼠不会跳跃过空格。锹环田鼠能够穿过手动气闸与机械气闸，但不能穿过由任何材质建造的气动门。"

    "锹环田鼠进食浮土、泥土或铁矿。它会把进食量的一半以整格物质的形式排泄出来。"
    "它们会将一块物体一次性吃掉，即使这块物体的重量高达 20 吨 - 然后它们就会排出一块 10 吨重的自然砖块。"
    "这可能是一种并不稳定的制造自然土块的方法，配合树鼠可以用于构建自然保护区。"
    "注意这种土块可能会为锹环田鼠带来新的路径，进而导致地鼠突破养殖室的封锁。（详见下文）"
    "锹环田鼠的寿命是 100 周期。"
    "锹环田鼠死后掉落 10 千克，16000 千卡肉。"
    "它们可能会被淹死，或被复制人攻击而死。"
  end

  section "浮土消耗策略" do
    "此策略的目的是利用锹环田鼠消耗掉陨石雨带来的大量浮土。方案是布置由金属砖或黑曜石砖建成的饲养室，并将太空区的浮土自动运到饲养室内。"

    "锹环田鼠以块状物形式排泄，当块状物体被排在饲养室角落且饲养室斜角砖块为锹环田鼠可以穿越的砖块时，锹环田鼠会通过自己的排泄物斜向穿越该砖块逃出饲养室，因此不应为了节省材料而在饲养室四角使用锹环田鼠可穿越的砖块，而是应该用气动门、金属砖或黑曜石完全包裹饲养室。"

    "同时，锹环田鼠排出的块状物可能会掩埋建筑，因此最佳的处理方式是在饲养室内建造机器人矿工自动挖掉锹环田鼠的块状排泄物。"
  end

  section "只摸不喂策略" do
    "温顺的锹环田鼠下的蛋孵化出来的锹环田鼠幼崽一出生就是温顺的，且其天生就具有 43200 千卡的卡路里储备。"

    "在小幼崽阶段，锹环田鼠幼崽的卡路里消耗的速度是 -480 千卡/周期。小幼崽会在第五个周期结束以后成年，成为锹环田鼠，此时它还剩下 43200 - 480 * 5 = 40800 千卡的卡路里储备。"

    "锹环田鼠的卡路里消耗速度是 -4800 千卡/周期，那么，在 8.5 周期以后，其卡路里储备将下降至 0 ，进入 即将饿死的状态。"

    "进入即将饿死状态以后，锹环田鼠还能够存活 10 个周期。随后它们就会饿死，产生 16000 千卡的肉。综上所述，一只完全不喂食的，温顺的锹环田鼠，其生长周期为 5（小幼崽） + 8.5（成年） + 10（即将饿死） = 23.5 周期。"

    "一只温顺的锹环田鼠，在保证其一直处于打扮状态的前提下，由于其不会感到狭窄，也不会感到闷闷不乐，所以它在成年以后，卡路里储备下降至 0 之前，它都是快乐的。此时它的繁殖速率是 16.7% ≈ 17% /周期（详见小动物养殖详解），这就意味着，它在成年以后的第 6 个周期，也就是当它的年龄到达 11 周期时，它会下一个蛋，随后它会经历 12.5 个周期以后饿死。"

    "这说明，只要保证某一个小房间内的锹环田鼠可以得到复制人们及时的照料，这个房间内的锹环田鼠们的数量就永远不会下降，并且可以源源不断地产生新的肉。这种养殖策略是不会消耗任何物资的，只不过会占据复制人们的工作时间。如果小动物的数量过大，可能还会导致游戏帧率的下降。"

    "从第一只幼崽出生开始计算，一直到下一只幼崽出生开始，会经历 5 （幼崽） + 6 （成年下蛋） + 20 （蛋自然孵化） = 31 个周期。取这 31 个周期为一个产肉循环，且假设所有的肉都会被加工成烤肉串，那么一只温顺的，得不到喂食的锹环田鼠的食物：周期比为 20000 / 31 = 645 千卡/周期。也就是说，使用这种策略，在正常难度下养殖 1.56 只锹环田鼠就能养活 1 个复制人，且完全不消耗任何资源。"

    "可以使用上述浮土消耗策略精养一只锹环田鼠来获得更多的锹环锹环田鼠蛋，然后使用只摸不喂策略来使其无消耗地，源源不断地产生新的食物。"
  end

  section "小技巧" do
    "一只逃入地下生态区的田鼠行进路线几乎是无穷的，一旦任由一只田鼠逃入生态之中，将会很难再找到它，所以需要十分小心，尽量避免锹环田鼠逃出养殖区。"

    "由于锹环田鼠不能够跳过空格，也不能够攀爬梯子，所以建造一个数格宽的平台并将其与其他砖块完全隔离，就可以很大程度避免田鼠逃脱。但是由于田鼠们有可能爬到平台下方，此时他们下的蛋也会落在平台下方，所以需要使用一定手段保证这些蛋会及时地送回到这个平台上。"

    "锹环田鼠不会出现“过度拥挤”状态。"
    "正因如此，一个狭窄的畜舍可以饲养任意多的锹环田鼠。唯一的限制因素只有复制人打扮它们的速度（和电脑的帧率）。"
    "一个孵化器可以孵化 1.47（喂食）/3.72（不喂食）只锹环田鼠。来源请求"
    "由于锹环田鼠死亡时掉落大量的肉，它们可以作为复制人的食物来源或在钻石不充裕的条件下用于生产喂食光耀虫的食物。"
    "由于锹环田鼠可以钻入许多自然方块，查看它的可行路线可以帮助确定战争迷雾附近的大致地形。如果当前小行星有“备选的打印舱位置”特性，这一方法也有助于确定打印舱所在的大致区位。"
  end
end

defmodule MoleSpecies.Mole do
  use MoleSpecies,
    baby: "mole_baby",
    egg: "mole_egg"
end
