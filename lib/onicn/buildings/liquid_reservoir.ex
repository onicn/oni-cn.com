defmodule Onicn.Buildings.LiquidReservoir do
  use Onicn.Categories.Building

  summary "储液库可以储存5000千克液体。"
  summary "储液库可以连接一根液体输入管和一根液体输出管。其中输入管是必需的，输出管是可选的。"
  summary "如果用氯气包围储液库，一周期后储液库储存液体中携带的病菌会被氯气杀死。"
  summary "储液库可以被复制人禁用，或者通过建造在机械气闸上面并打开机械气闸的方式禁用。禁用时可以输入液体但是不会输出液体。"

  usage "储液库可以用作一个简单的液体缓冲，避免建设水池的麻烦。"
  usage "可以在氯气室中建造储液库存放携带病菌的污水来杀菌。"

  tips "储液库会过热，小心选择建造位置及相应材料。"
  tips "储液库里的液体只会和输出管道口下面的那块砖交换热量。并不会和储液库本身交换热量。如果这块砖是真空网格砖或透气砖，里面的液体就可以完全隔绝热交换。"
  tips "储液库会将输入液体的温度和内容物温度平均。因此可以输出温度更稳定的液体。"
  tips "有跟智能电池类似的信号输出端口。"
end
