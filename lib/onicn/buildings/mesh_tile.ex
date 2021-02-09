defmodule Onicn.Buildings.MeshTile do
  use Onicn.Categories.Building

  summary "网格砖类似于砖块，差别在于网格砖允许液体和气体通过。"
  summary "光（阳光除外）和装饰值不能透过网格砖。"

  usage "网格砖用于在维持房间或地基完整性的同时，允许液体和气体通过。举例说明："
  usage "在种植膳食树或刺花的农场内布置若干网格砖能够排走误入的积水和氯气。"
  usage "在小滑头饲养室内布置若干网格砖能够排走原油。"
  usage "在冰冻区内使用网格砖作为建筑地基能够排走上方融化的水或污水。"

  tips "在无需维持房间完整性，并且不是地基的场合，使用梯子更为简单，可以节约金属矿石"
end
