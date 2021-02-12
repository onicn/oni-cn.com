defmodule Onicn.Buildings.PowerTransformerSmall do
  use Onicn.Categories.Building

  summary "功率转变器用于分割高负载电网和低负载电网，保护低负载电网不会过载。"
  summary "常见的电网由电线或导电线连接，其负载能力分别是1千瓦和2千瓦。"
  summary "当电网的实时负载功率超过该限制时，即有一定概率某段电线会过载损坏。"
  summary "当使用少数几台发电机集中供电时，此情况尤为严重，此时即需要功率转变器分割电网。"
  summary "功率转变器上方一排的连接点接入高负载电网，通常为高压电线或高导电线。"
  summary "下方一排的连接点接入低负载电网，通常为电线。"
  summary "此时低负载电网的功率负载独立计算，而高复制电网的功率负载会包含低负载电网的功率负载。"
  summary "功率转变器本身有1千焦的电力缓冲可以供给低负载电网。"

  usage "连接高负载电网和低负载电网（限制为1千瓦）。"
  usage "参见大功率转变器"
end
