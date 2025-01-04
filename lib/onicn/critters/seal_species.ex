alias Onicn.Critters.SealSpecies

defmodule SealSpecies do
  use Onicn.Categories.Critter, [
    SealSpecies.Seal
  ]
end

defmodule SealSpecies.Seal do
  use SealSpecies
end
