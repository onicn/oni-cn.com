alias Onicn.Critters.RaptorSpecies

defmodule RaptorSpecies do
  use Onicn.Categories.Critter, [
    RaptorSpecies.Raptor
  ]
end

defmodule RaptorSpecies.Raptor do
  use RaptorSpecies
end
