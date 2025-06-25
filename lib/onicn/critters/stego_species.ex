alias Onicn.Critters.StegoSpecies

defmodule StegoSpecies do
  use Onicn.Categories.Critter, [
    StegoSpecies.Stego
  ]
end

defmodule StegoSpecies.Stego do
  use StegoSpecies
end
