alias Onicn.Critters.PrehistoricSpecies

defmodule PrehistoricSpecies do
  use Onicn.Categories.Critter, [
    PrehistoricSpecies.PrehistoricPacu
  ]
end

defmodule PrehistoricSpecies.PrehistoricPacu do
  use PrehistoricSpecies
end