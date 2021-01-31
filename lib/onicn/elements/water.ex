defmodule Onicn.Elements.Water do
  use Onicn.Categories.Liquid,
    cn_name: "水",
    low_temp: -0.65,
    low_temp_transition_target: Onicn.Elements.Ice,
    high_temp: 99.35,
    high_temp_transition_target: {Onicn.Elements.Steam, 0.33},
    high_temp_transition_target: {Onicn.Elements.Ice, 0.67},
    specific_heat_capacity: 4.179,
    thermal_conductivity: 0.609,
    mass_per_tile: 1000,
    density: 18.01528
end
