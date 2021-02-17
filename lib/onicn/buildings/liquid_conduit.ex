defmodule Onicn.Buildings.LiquidConduit do
  use Onicn.Categories.Building

  summary "液体管道能够输送液体。"
  summary "液体管道连接建筑的输出液体口和输入液体口。"
  summary "液体从建筑输出口向建筑输入口流动。"
  summary "每格液体管道的容量为10千克液体。"
  summary "系统每秒计算一次液体的流动方向并使其流动一格。换而言之，液体在管道内的最大流速为10千克/秒。"
  summary "液体在管道内流动不受重力影响，从低处流到高处不需要额外加压。"
  summary "如果（大于1kg的）液体在管道内发生相变，液体管道会损坏。"
  summary "液体管道有自己的建筑层面，可以和普通建筑重叠而不冲突。"

  usage "在建筑之间输送液体。"

  tips "一个管网内存在多个建筑输出口和多个建筑输入口时，系统计算流动方向可能会出现回流现象。"
  tips "建议使用液体管桥分割成多个管网。"

end
