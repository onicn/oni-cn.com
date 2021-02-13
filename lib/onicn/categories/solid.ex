defmodule Onicn.Categories.Solid do
  use Onicn.Categories.Element,
    name: "solid",
    cn_name: "固体",
    fields: [
      :high_temp,
      :high_temp_transition_target,
      :specific_heat_capacity,
      :thermal_conductivity,
      :hardness,
      :molar_mass
    ]
end
