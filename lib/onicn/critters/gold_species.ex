alias Onicn.Critters.GoldSpecies

defmodule GoldSpecies do
  use Onicn.Categories.Critter, [
    GoldSpecies.GoldBelly
  ]
end

defmodule GoldSpecies.GoldBelly do
  use GoldSpecies
end