alias Onicn.Critters.MooSpecies

defmodule MooSpecies do
  use Onicn.Categories.Critter, [MooSpecies.Moo]
end

defmodule MooSpecies.Moo do
  use MooSpecies,
    cn_name: "释气海牛",
    en_name: "Gassy Moo"
end
