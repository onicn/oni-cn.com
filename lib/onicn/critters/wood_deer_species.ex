alias Onicn.Critters.WoodDeerSpecies

defmodule WoodDeerSpecies do
  use Onicn.Categories.Critter, [
    WoodDeerSpecies.WoodDeer
  ]
end

defmodule WoodDeerSpecies.WoodDeer do
  use WoodDeerSpecies
end
