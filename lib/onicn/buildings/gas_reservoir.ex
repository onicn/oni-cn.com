defmodule Onicn.Buildings.GasReservoir do
  use Onicn.Categories.Building

  section "简介" do
    "储气库可用于存储气体，其容量为150千克。"
    "储气库可以连接一根气体输入管和一根气体输出管。其中输入管是必需的，输出管是可选的。"
    "如果用氯气包围储气库，一周期后储气库储存气体中携带的病菌会被氯气杀死。"
    "复制人可以禁用储气库。禁用时可以输入气体但是输出管道会停止。虽然没有自动化接口，但是可以建造在机械气闸上面。用自动化信号控制机械气闸的开关。"
  end

  section "用途" do
    "储气库可以用作一个简单的气体缓冲。输出气体不需要电。"
    "在氯气室中建设储气库来给污染氧杀菌。"
  end

  section "小技巧" do
    "储气库会过热，小心选择建造位置及相应材料。"
    "储气库里的气体只会和输出管道口下面的那块砖交换热量。并不会和储气库本身交换热量。如果这块砖是真空网格砖或透气砖，里面的气体就可以完全隔绝热交换。"
    "储气库的容量小，空间利用率低。胜在用气体的时候比较方便。"
    "储气库会将输入气体的温度和内容物温度平均。因此可以输出温度更稳定的气体。"
    "有跟智能电池类似的信号输出端口。"
  end
end
