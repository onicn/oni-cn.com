alias Onicn.Critters.MorbSpecies

defmodule MorbSpecies do
  use Onicn.Categories.Critter, [
    MorbSpecies.MorbRover
  ]
end

defmodule MorbSpecies.MorbRover do
  use MorbSpecies
end
