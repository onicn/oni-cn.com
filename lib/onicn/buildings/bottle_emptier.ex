defmodule Onicn.Buildings.BottleEmptier do
  use Onicn.Categories.Building

  section "简介" do
    "空瓶器能够让复制人把瓶装液体倒到指定地点。"
    "空瓶器能够储存200千克液体，并把储存的液体释放到世界中。"
    "空瓶器可以左右翻转来调整释放的位置。"
    "玩家可以设定空瓶器接受的液体类型。"
    "初始时，只有水和污染水会出现在选择列表里，其它液体类型会随着发现而添加。"
    "启用自动装桶后，如果条件允许，复制人会反复去手压泵灌装瓶装液体并带到空瓶器释放。"
  end

  section "用途" do
    "把瓶装液体倒到指定地点。"
  end
end
