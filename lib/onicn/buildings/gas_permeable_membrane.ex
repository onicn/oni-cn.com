defmodule Onicn.Buildings.GasPermeableMembrane do
  use Onicn.Categories.Building

  summary "透气砖类似于砖块，差别在于透气砖允许气体通过，装饰度略低。"
  summary "透气砖允许气体通过但不允许液体和装饰度通过。"
  summary "透气砖不会有压力损坏。"

  usage "透气砖用于在维持房间或地基完整性的同时，禁止液体通过而只允许气体通过"

  tips "允许阳光无损通过。但是阻止其它光线通过。"
  tips "放在太空区并不会漏气（类似于后面贴了干板墙的效果）。"
  tips "因为不会压力损坏，可以用来建造高压液库存储大量液体。机械气闸和手动气闸也不会压力损坏，可以用在需要阻止气体流动的场合。"
end
