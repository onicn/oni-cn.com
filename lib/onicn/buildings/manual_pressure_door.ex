defmodule Onicn.Buildings.ManualPressureDoor do
  use Onicn.Categories.Building

  summary "手动气闸可以阻挡液体和气体的流动，维持房间气压。"
  summary "类似于气动门，手动气闸同样拥有打开、自动、锁定三种模式："
  summary "打开：手动气闸保持打开，液体气体自由流动，复制人和动物可以通过。"
  summary "自动：手动气闸平时关闭，仅当复制人经过时打开。可以设置复制人通行权限。动物不能通过。"
  summary "锁定：手动气闸保持关闭。"
  summary "当手动气闸关闭时，液体、气体、光照、装饰值都不能穿过手动气闸。"
  summary "注意手动气闸能够导热。"
  summary "手动气闸能够旋转至水平方向。关闭的手动气闸可以作为建筑地基。"

  usage "手动气闸常用于密封房间，尽可能减少房间中特定气体外泄。"
  usage "不会受到压力损坏，因此可以用于建造高压液库。"

  tips "并不能完全阻止两边气体液体交换，在复制人路过开门的短暂时间仍然会有气体液体交换。"
  tips "需要完全隔绝两边气体并允许复制人通过的情况下通常会使用液封门（水门）代替手动气闸。"
  tips "Bug：当手动气闸或机械气闸的左右下方都被砖块包围，这时拆掉气闸，气闸的材料会变成自然方块。可以配合树鼠种植来制造自然保护区。"
end
