alias Onicn.Critters.IceBellySpecies

defmodule IceBellySpecies do
  use Onicn.Categories.Critter, [
    IceBellySpecies.IceBelly,
    IceBellySpecies.GoldBelly
  ]
end

defmodule IceBellySpecies.IceBelly do
  use IceBellySpecies
end

defmodule IceBellySpecies.GoldBelly do
  use IceBellySpecies
end
