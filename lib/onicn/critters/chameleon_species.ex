alias Onicn.Critters.ChameleonSpecies

defmodule ChameleonSpecies do
  use Onicn.Categories.Critter, [
    ChameleonSpecies.Chameleon
  ]
end

defmodule ChameleonSpecies.Chameleon do
  use ChameleonSpecies
end