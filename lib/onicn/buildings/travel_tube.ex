defmodule Onicn.Buildings.TravelTube do
  use Onicn.Categories.Building

  section "简介" do
    "运载管道能快速长距离运输复制人，需要和运载管道接入点配合使用。"
    "复制人自运载管道接入点进入运载管道系统。当位于运载管道内部时，复制人和周围环境隔绝。"
    "类似于高负荷电线，运载管道不能穿过其他砖块，但可以使用运载管道渡口达到类似效果。"
    "运载管道可以分叉，也可以拐弯，但不能拐成U形弯。"
    "运载管道的出口下方两格内需要有固体表面供复制人着地。"
    "运载管道的移动速度仅次于消防滑竿。"
  end

  section "用途" do
    "用于复制人长距离移动。"
  end

  section "小技巧" do
    "运载管道由塑料制成，会在高温下融化。"
    "复制人在里面的时候不消耗氧气，但是仍然可能饿死。"
    "如果管道两头被同时销毁，复制人会卡在里面。"
    "高运动属性的复制人爬塑料梯子或在金属砖上跑会比运载管道更快。"
    "运载管道不阻挡物体。因此复制人手里拿的东西可能会从里面掉出来。"
  end
end
