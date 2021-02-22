alias Onicn.Critters.GlomSpecies

defmodule GlomSpecies do
  use Onicn.Categories.Critter, [
    GlomSpecies.Glom
  ]
end

defmodule GlomSpecies.Glom do
  use GlomSpecies,
    cn_name: "疫病章鱼",
    en_name: "Morb"
end
