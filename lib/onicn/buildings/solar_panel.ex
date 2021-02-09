defmodule Onicn.Buildings.SolarPanel do
  use Onicn.Categories.Building
  
  summary "太阳能电池板能够将光照转化为电力。"
  summary "太阳能电池板的功率和光照强度成正比。"
  summary "当光照强度达到49999勒克斯时，太阳能电池板达到最大功率380瓦。"
  summary "太阳能电池板的最下一排是自带地基，可以构成房间的地板或天花板。"

  usage "在太空区受光照发电。"
  usage "上方修建地堡门抵御陨石雨，再修建一层窗户砖拦截浮土，预防太阳能电池板过热。"
  usage "发光虫的光也可以使太阳能电池板发电，但功率很低。"
end
