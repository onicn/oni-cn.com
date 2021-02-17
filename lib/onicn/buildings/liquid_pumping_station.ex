defmodule Onicn.Buildings.LiquidPumpingStation do
  use Onicn.Categories.Building

  summary "手压泵能够让复制人手动抽取液体装入瓶中，以方便携带和运送。"
  summary "手压泵提供一个平台，复制人能够在平台上行走。"
  summary "当复制人从上方掉落时，能够掉落在平台上。掉落的固体、液体、气体会穿过平台掉至下方。"
  summary "平台下方延伸出最多四格深的取水器。"
  summary "当多种液体混合存在时，抽取的每瓶液体只含单种液体。"

  usage "下列建筑需要从手压泵手动取水：洗手盆，超级计算机，食物压制器。"
  usage "空瓶器能够将从手压泵抽取的瓶装液体释放回世界。"

  tips "由于抽取的液体只含单种液体，可以用于分离少量混合液体。"
end
