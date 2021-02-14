defmodule Onicn.Buildings.WireRefinedBridgeHighWattage do
  use Onicn.Categories.Building

  summary "高负荷导线接合板和高负荷导线配合使用，让后者可以穿过地板和墙壁。"
  summary "高负荷导线接合板左右各有一个连接点可以连接高负荷导线，也可旋转至竖直位置。"
  summary "高负荷导线接合板可以作为砖块支撑上方建筑。"

  usage "让高负荷导线可以穿过地板和墙壁。"

  tips "跟电线桥类似，中间的格子不算做有高负荷导线通过，因此可以垂直方向穿过其它电线。"
  tips "由于是由金属制造，导热率较高，如果和隔热砖一起放会导致热量漏出。在特别需要隔热的房间，可以让接合板的一端放在真空环境来杜绝热量传递。"
end
