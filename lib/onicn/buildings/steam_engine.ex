defmodule Onicn.Buildings.SteamEngine do
  use Onicn.Categories.Building

  section "简介" do
    "蒸汽引擎是初始火箭引擎，建造在火箭最下层。通过气体管道输入蒸汽，可以为火箭提供动力。"
  end

  section "小技巧" do
    "输入后的蒸汽温度不会变化，所以不用担心降温液化。"
    "与其它引擎不同，不需要液缸燃料舱和氧化剂舱。"
    "输入蒸汽最好用隔热管道，多余的蒸汽回流，如果长时间停在管子里，蒸汽与管子热交换，容易液化爆管。"
    "另外可以用热敏感的普通管道，让管道温度尽快到达96.4摄氏度以上，如果在真空中就不会使成蒸汽温度更低。"
    "第一个火箭只能带研究舱，这样才有数据磁盘来进行其它火箭科技的研究。"
    "如果被浮土掩埋则会停止接收燃料。"
    "一个单独的蒸汽引擎只可以到达最近的星球。额外添加一个固燃推进器可以到达20000千米的星球。"
    "输入错误的气体不会损坏引擎，它会立即排到环境中。"
  end
end
