alias Onicn.Critters.BeeSpecies

defmodule BeeSpecies do
  use Onicn.Categories.Critter, [
    BeeSpecies.Bee,
    BeeSpecies.BeeHive
  ]
end

defmodule BeeSpecies.Bee do
  use BeeSpecies
end

defmodule BeeSpecies.BeeHive do
  use BeeSpecies
end
