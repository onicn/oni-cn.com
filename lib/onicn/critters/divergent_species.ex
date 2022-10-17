alias Onicn.Critters.DivergentSpecies

defmodule DivergentSpecies do
  use Onicn.Categories.Critter, [
    DivergentSpecies.DivergentBeetle,
    DivergentSpecies.DivergentWorm
  ]
end

defmodule DivergentSpecies.DivergentWorm do
  use DivergentSpecies
end

defmodule DivergentSpecies.DivergentBeetle do
  use DivergentSpecies
end
