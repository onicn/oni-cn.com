defmodule Onicn.Categories.Liquid do
  use Onicn.Categories.Element,
    name: "liquid",
    cn_name: "液体",
    fields: [
      :low_temp,
      :low_temp_transition_target,
      :high_temp,
      :high_temp_transition_target,
      :specific_heat_capacity,
      :thermal_conductivity,
      :mass_per_tile,
      :molar_mass
    ]
end
