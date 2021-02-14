defmodule Onicn.Buildings.HydrogenGenerator do
  use Onicn.Categories.Building

  summary "氢气发电机能够将氢气转化为电力。"
  summary "氢气发电机容量为2千克氢气，能转化为16千焦电力，发电效率是8千焦/千克氢气。"
  summary "如果输入其它气体会损坏发电机。"
  summary "是单位发电量产热最少的发电机。"

  usage "氢气发电机可以回收利用电解器产生的氢气。"
  usage "和其他发电机相比，氢气发电机的优点是没有副产物排放。"

  tips "对于和电解器配套使用的氢气发电机，不建议使用自动化信号控制，以避免停机时氢气堵塞气体管道。一个持续运行的电解器的氢气产生速度要高于一个氢气发电机的消耗速度。"
  tips "因为氢气发电机的瓦数高于电解器的消耗，如果可以降低氢气氧气分离的电力消耗，制氧系统可以提供额外的电力。"
  tips "用水电解产生氢气来发电，不如把水通给油井然后用石油和天然气发电产生的电量多。因此如果是为了发电，用电解器产氢气对水资源的利用率不是最佳的。"
  tips "如果地图上有氢气喷口，则可以利用这些氢气来提供额外电力。由于氢气喷口会休眠，最好有气体存储区以供在休眠时发电。一个储气罐存储的氢气足够充满30个巨型电池。"
end
