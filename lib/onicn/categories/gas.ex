defmodule Onicn.Categories.Gas do
  use Onicn.Categories.Element,
    name: "gas",
    cn_name: "气体",
    fields: [
      :low_temp,
      :low_temp_transition_target,
      :specific_heat_capacity,
      :thermal_conductivity,
      :molar_mass
    ]
end
