alias Onicn.Critters.FetchSpecies

defmodule FetchSpecies do
  use Onicn.Categories.Critter, [
    FetchSpecies.FetchDrone
  ]
end

defmodule FetchSpecies.FetchDrone do
  use FetchSpecies
end