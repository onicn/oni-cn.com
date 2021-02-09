defmodule Onicn.Buildings.LiquidReservoir do
  use Onicn.Categories.Building
  
  summary "储液库可以储存5000千克液体。"
  summary "储液库可以连接一根液体输入管和一根液体输出管。其中输入管是必需的，输出管是可选的。"
  summary "储液库中的液体仅和输出管下方的格子进行热交换。"
  summary "如果用氯气包围储液库，一周期后储液库储存液体中携带的病菌会被氯气杀死。"

  usage "储液库可以用作一个简单的液体缓冲，避免建设水池的麻烦。"
  usage "可以在氯气室中建造储液库存放携带病菌的污水来杀菌"

end
