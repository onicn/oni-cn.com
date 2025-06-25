alias Onicn.Critters.MosquitoSpecies

defmodule MosquitoSpecies do
  use Onicn.Categories.Critter, [
    MosquitoSpecies.Mosquito
  ]
end

defmodule MosquitoSpecies.Mosquito do
  use MosquitoSpecies
end