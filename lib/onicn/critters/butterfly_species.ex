alias Onicn.Critters.ButterflySpecies

defmodule ButterflySpecies do
  use Onicn.Categories.Critter, [
    ButterflySpecies.Butterfly
  ]
end

defmodule ButterflySpecies.Butterfly do
  use ButterflySpecies
end
