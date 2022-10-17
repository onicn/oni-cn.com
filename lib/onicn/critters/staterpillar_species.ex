alias Onicn.Critters.StaterpillarSpecies

defmodule StaterpillarSpecies do
  use Onicn.Categories.Critter, [
    StaterpillarSpecies.Staterpillar,
    StaterpillarSpecies.StaterpillarGas,
    StaterpillarSpecies.StaterpillarLiquid
  ]
end


defmodule StaterpillarSpecies.Staterpillar do
  use StaterpillarSpecies
end

defmodule StaterpillarSpecies.StaterpillarGas do
  use StaterpillarSpecies
end

defmodule StaterpillarSpecies.StaterpillarLiquid do
  use StaterpillarSpecies
end
