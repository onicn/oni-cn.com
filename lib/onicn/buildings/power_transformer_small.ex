defmodule Onicn.Buildings.PowerTransformerSmall do
  use Onicn.Categories.Building

  summary "功率转变器用于分割高负荷电网和低负荷电网，保护低负荷电网不会过载。"
  summary "常见的电由电线或导线连接，其负荷能力分别是1千瓦和2千瓦。"
  summary "当电网的实时负荷功率超过该限制时，即有一定概率某段电线会过载损坏。"
  summary "当使用少数几台发电机集中供电时，此情况尤为严重，此时即需要功率转变器分割电网。"
  summary "功率转变器上方一排的连接点接入高负荷电网，通常为高负荷电线或高负荷导线。"
  summary "下方一排的连接点接入低负荷电网，通常为电线或导线。"
  summary "此时低负荷电网的功率负荷独立计算，而高负荷电网的功率负荷会包含低负荷电网的功率负荷。"
  summary "功率转变器本身有1千焦的电力缓冲可以供给低负荷电网，类似于一个小电池。"

  usage "连接高负荷电网和低负荷电网（限制为1千瓦）。"
  usage "参见大功率转变器"
end
