defmodule Onicn.Buildings.HydrogenGenerator do
  use Onicn.Categories.Building
  
  summary "氢气发电机能够将氢气转化为电力。"
  summary "氢气发电机容量为2千克氢气，能转化为16千焦电力，发电效率是8千焦/千克氢气。"

  usage "氢气发电机可以回收利用电解器产生的氢气。"
  usage "和其他发电机相比，氢气发电机的优点是没有副产物排放。"

  tips "对于和电解器配套使用的氢气发电机，不建议使用自动化信号控制，以避免停机时氢气堵塞气体管道。"

end
