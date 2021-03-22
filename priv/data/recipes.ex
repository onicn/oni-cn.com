[
  %{
    name: Onicn.Buildings.ClothingFabricator,
    recipes: [
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.WarmVest}],
        require: [%{amount: 4, material_id: Onicn.Others.BasicFabric}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.CoolVest}],
        require: [%{amount: 4, material_id: Onicn.Others.BasicFabric}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.FunkyVest}],
        require: [%{amount: 4, material_id: Onicn.Others.BasicFabric}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.CookingStation,
    recipes: [
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.PickledMeal}],
        require: [%{amount: 3, material_id: Onicn.Foods.BasicPlantFood}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.FriedMushBar}],
        require: [%{amount: 1, material_id: Onicn.Foods.MushBar}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.FriedMushroom}],
        require: [%{amount: 1, material_id: Onicn.Foods.Mushroom}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.CookedMeat}],
        require: [%{amount: 2, material_id: Onicn.Foods.Meat}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.CookedFish}],
        require: [%{amount: 1, material_id: Onicn.Foods.FishMeat}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.GrilledPrickleFruit}],
        require: [%{amount: 1, material_id: Onicn.Foods.PrickleFruit}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.ColdWheatBread}],
        require: [%{amount: 3, material_id: Onicn.Foods.ColdWheatSeed}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.CookedEgg}],
        require: [%{amount: 1, material_id: Onicn.Foods.RawEgg}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.GlassForge,
    recipes: [
      %{
        produce: [%{amount: 25, material_id: Onicn.Elements.MoltenGlass}],
        require: [%{amount: 100, material_id: Onicn.Elements.Sand}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.GourmetCookingStation,
    recipes: [
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.Salsa}],
        require: [
          %{amount: 2, material_id: Onicn.Foods.GrilledPrickleFruit},
          %{amount: 2, material_id: Onicn.Foods.SpiceNut}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.MushroomWrap}],
        require: [
          %{amount: 1, material_id: Onicn.Foods.FriedMushroom},
          %{amount: 4, material_id: Onicn.Foods.Lettuce}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.SurfAndTurf}],
        require: [
          %{amount: 1, material_id: Onicn.Foods.CookedMeat},
          %{amount: 1, material_id: Onicn.Foods.CookedFish}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.SpiceBread}],
        require: [
          %{amount: 10, material_id: Onicn.Foods.ColdWheatSeed},
          %{amount: 1, material_id: Onicn.Foods.SpiceNut}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.SpicyTofu}],
        require: [
          %{amount: 1, material_id: Onicn.Foods.Tofu},
          %{amount: 1, material_id: Onicn.Foods.SpiceNut}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.Burger}],
        require: [
          %{amount: 1, material_id: Onicn.Foods.ColdWheatBread},
          %{amount: 1, material_id: Onicn.Foods.Lettuce},
          %{amount: 1, material_id: Onicn.Foods.CookedMeat}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.Kiln,
    recipes: [
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Ceramic}],
        require: [
          %{amount: 100, material_id: Onicn.Elements.Clay},
          %{amount: 25, material_id: Onicn.Elements.Carbon}
        ]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.RefinedCarbon}],
        require: [%{amount: 125, material_id: Onicn.Elements.Carbon}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.MetalRefinery,
    recipes: [
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Copper}],
        require: [%{amount: 100, material_id: Onicn.Elements.Cuprite}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Tungsten}],
        require: [%{amount: 100, material_id: Onicn.Elements.Wolframite}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Gold}],
        require: [%{amount: 100, material_id: Onicn.Elements.Electrum}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Aluminum}],
        require: [%{amount: 100, material_id: Onicn.Elements.AluminumOre}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Gold}],
        require: [%{amount: 100, material_id: Onicn.Elements.GoldAmalgam}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Niobium}],
        require: [
          %{amount: 100, material_id: Onicn.Elements.TempConductorSolid}
        ]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Iron}],
        require: [%{amount: 100, material_id: Onicn.Elements.IronOre}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Iron}],
        require: [%{amount: 100, material_id: Onicn.Elements.FoolsGold}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Steel}],
        require: [
          %{amount: 70, material_id: Onicn.Elements.Iron},
          %{amount: 20, material_id: Onicn.Elements.RefinedCarbon},
          %{amount: 10, material_id: Onicn.Elements.Lime}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.MicrobeMusher,
    recipes: [
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.MushBar}],
        require: [
          %{amount: 75, material_id: Onicn.Elements.Dirt},
          %{amount: 75, material_id: Onicn.Elements.Water}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.BasicPlantBar}],
        require: [
          %{amount: 2, material_id: Onicn.Foods.BasicPlantFood},
          %{amount: 50, material_id: Onicn.Elements.Water}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.Tofu}],
        require: [
          %{amount: 6, material_id: Onicn.Foods.BeanPlantSeed},
          %{amount: 50, material_id: Onicn.Elements.Water}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Foods.FruitCake}],
        require: [
          %{amount: 5, material_id: Onicn.Foods.ColdWheatSeed},
          %{amount: 1, material_id: Onicn.Foods.PrickleFruit}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.RockCrusher,
    recipes: [
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Sand}],
        require: [%{amount: 100, material_id: Onicn.Elements.SuperInsulator}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Sand}],
        require: [%{amount: 100, material_id: Onicn.Elements.Ceramic}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Sand}],
        require: [%{amount: 100, material_id: Onicn.Elements.Obsidian}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Sand}],
        require: [%{amount: 100, material_id: Onicn.Elements.IgneousRock}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Sand}],
        require: [%{amount: 100, material_id: Onicn.Elements.Granite}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Sand}],
        require: [%{amount: 100, material_id: Onicn.Elements.SedimentaryRock}]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.Sand}],
        require: [%{amount: 100, material_id: Onicn.Elements.SandStone}]
      },
      %{
        produce: [
          %{amount: 50, material_id: Onicn.Elements.Copper},
          %{amount: 50, material_id: Onicn.Elements.Sand}
        ],
        require: [%{amount: 100, material_id: Onicn.Elements.Cuprite}]
      },
      %{
        produce: [
          %{amount: 50, material_id: Onicn.Elements.Tungsten},
          %{amount: 50, material_id: Onicn.Elements.Sand}
        ],
        require: [%{amount: 100, material_id: Onicn.Elements.Wolframite}]
      },
      %{
        produce: [
          %{amount: 50, material_id: Onicn.Elements.Gold},
          %{amount: 50, material_id: Onicn.Elements.Sand}
        ],
        require: [%{amount: 100, material_id: Onicn.Elements.Electrum}]
      },
      %{
        produce: [
          %{amount: 50, material_id: Onicn.Elements.Aluminum},
          %{amount: 50, material_id: Onicn.Elements.Sand}
        ],
        require: [%{amount: 100, material_id: Onicn.Elements.AluminumOre}]
      },
      %{
        produce: [
          %{amount: 50, material_id: Onicn.Elements.Gold},
          %{amount: 50, material_id: Onicn.Elements.Sand}
        ],
        require: [%{amount: 100, material_id: Onicn.Elements.GoldAmalgam}]
      },
      %{
        produce: [
          %{amount: 50, material_id: Onicn.Elements.Niobium},
          %{amount: 50, material_id: Onicn.Elements.Sand}
        ],
        require: [
          %{amount: 100, material_id: Onicn.Elements.TempConductorSolid}
        ]
      },
      %{
        produce: [
          %{amount: 50, material_id: Onicn.Elements.Iron},
          %{amount: 50, material_id: Onicn.Elements.Sand}
        ],
        require: [%{amount: 100, material_id: Onicn.Elements.IronOre}]
      },
      %{
        produce: [
          %{amount: 50, material_id: Onicn.Elements.Iron},
          %{amount: 50, material_id: Onicn.Elements.Sand}
        ],
        require: [%{amount: 100, material_id: Onicn.Elements.FoolsGold}]
      },
      %{
        produce: [%{amount: 5, material_id: Onicn.Elements.Lime}],
        require: [%{amount: 5, material_id: Onicn.Others.EggShell}]
      },
      %{
        produce: [%{amount: 5, material_id: Onicn.Elements.Lime}],
        require: [%{amount: 1, material_id: Onicn.Others.BabyCrabShell}]
      },
      %{
        produce: [%{amount: 10, material_id: Onicn.Elements.Lime}],
        require: [%{amount: 1, material_id: Onicn.Others.CrabShell}]
      },
      %{
        produce: [
          %{amount: 5, material_id: Onicn.Elements.Lime},
          %{amount: 95, material_id: Onicn.Elements.SedimentaryRock}
        ],
        require: [%{amount: 100, material_id: Onicn.Elements.Fossil}]
      },
      %{
        produce: [
          %{amount: 0.005, material_id: Onicn.Others.TableSalt},
          %{amount: 99.995, material_id: Onicn.Elements.Sand}
        ],
        require: [%{amount: 100, material_id: Onicn.Elements.Salt}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.SuitFabricator,
    recipes: [
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.AtmoSuit}],
        require: [
          %{amount: 300, material_id: Onicn.Elements.Copper},
          %{amount: 2, material_id: Onicn.Others.BasicFabric}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.AtmoSuit}],
        require: [
          %{amount: 300, material_id: Onicn.Elements.Aluminum},
          %{amount: 2, material_id: Onicn.Others.BasicFabric}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.AtmoSuit}],
        require: [
          %{amount: 300, material_id: Onicn.Elements.Iron},
          %{amount: 2, material_id: Onicn.Others.BasicFabric}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.JetSuit}],
        require: [
          %{amount: 200, material_id: Onicn.Elements.Steel},
          %{amount: 25, material_id: Onicn.Elements.Petroleum}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.SupermaterialRefinery,
    recipes: [
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.SuperCoolant}],
        require: [
          %{amount: 1, material_id: Onicn.Elements.Fullerene},
          %{amount: 49.5, material_id: Onicn.Elements.Gold},
          %{amount: 49.5, material_id: Onicn.Elements.Petroleum}
        ]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.SuperInsulator}],
        require: [
          %{amount: 15.000001, material_id: Onicn.Elements.Isoresin},
          %{amount: 80, material_id: Onicn.Elements.Katairite},
          %{amount: 5, material_id: Onicn.Others.BasicFabric}
        ]
      },
      %{
        produce: [
          %{amount: 100, material_id: Onicn.Elements.TempConductorSolid}
        ],
        require: [
          %{amount: 5, material_id: Onicn.Elements.Niobium},
          %{amount: 95, material_id: Onicn.Elements.Tungsten}
        ]
      },
      %{
        produce: [%{amount: 100, material_id: Onicn.Elements.ViscoGel}],
        require: [
          %{amount: 35, material_id: Onicn.Elements.Isoresin},
          %{amount: 65, material_id: Onicn.Elements.Petroleum}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.Apothecary,
    recipes: [
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.AdvancedCure}],
        require: [
          %{amount: 1, material_id: Onicn.Elements.Steel},
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.LightBugSpecies.LightBugOrange}
          }
        ]
      },
      %{
        produce: [%{amount: 10, material_id: Onicn.Others.Antihistamine}],
        require: [
          %{amount: 1, material_id: {:seed, Onicn.Plants.PrickleFlower}},
          %{amount: 1, material_id: Onicn.Elements.Dirt}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.BasicBooster}],
        require: [%{amount: 1, material_id: Onicn.Elements.Carbon}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.BasicCure}],
        require: [
          %{amount: 1, material_id: Onicn.Elements.Carbon},
          %{amount: 1, material_id: Onicn.Elements.Water}
        ]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.IntermediateBooster}],
        require: [%{amount: 1, material_id: Onicn.Foods.SpiceNut}]
      },
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.IntermediateCure}],
        require: [
          %{amount: 1, material_id: Onicn.Others.SwampLilyFlower},
          %{amount: 1, material_id: Onicn.Elements.Phosphorite}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.EggCracker,
    recipes: [
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{amount: 1, material_id: {:egg, Onicn.Critters.MoleSpecies.Mole}}
        ]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [%{amount: 1, material_id: {:egg, Onicn.Critters.OilFloaterSpecies.OilFloater}}]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{amount: 1, material_id: {:egg, Onicn.Critters.OilFloaterSpecies.OilFloaterDecor}}
        ]
      },
      %{
        produce: [
          %{amount: 0.1, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.LightBugSpecies.LightBugPurple}
          }
        ]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{amount: 1, material_id: {:egg, Onicn.Critters.OilFloaterSpecies.OilFloaterHighTemp}}
        ]
      },
      %{
        produce: [
          %{amount: 2, material_id: Onicn.Foods.RawEgg},
          %{amount: 2, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.PacuSpecies.PacuCleaner}
          }
        ]
      },
      %{
        produce: [
          %{amount: 2, material_id: Onicn.Foods.RawEgg},
          %{amount: 2, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{amount: 1, material_id: {:egg, Onicn.Critters.PacuSpecies.Pacu}}
        ]
      },
      %{
        produce: [
          %{amount: 2, material_id: Onicn.Foods.RawEgg},
          %{amount: 2, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.PacuSpecies.PacuTropical}
          }
        ]
      },
      %{
        produce: [
          %{amount: 0.25, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.25, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.PuftSpecies.PuftAlpha}
          }
        ]
      },
      %{
        produce: [
          %{amount: 0.1, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.LightBugSpecies.LightBugPink}
          }
        ]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{amount: 1, material_id: {:egg, Onicn.Critters.DreckoSpecies.Drecko}}
        ]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.DreckoSpecies.DreckoPlastic}
          }
        ]
      },
      %{
        produce: [
          %{amount: 0.1, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.LightBugSpecies.LightBugBlack}
          }
        ]
      },
      %{
        produce: [
          %{amount: 0.1, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.LightBugSpecies.LightBugBlue}
          }
        ]
      },
      %{
        produce: [
          %{amount: 0.1, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.LightBugSpecies.LightBug}
          }
        ]
      },
      %{
        produce: [
          %{amount: 0.1, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.LightBugSpecies.LightBugCrystal}
          }
        ]
      },
      %{
        produce: [
          %{amount: 0.1, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.LightBugSpecies.LightBugOrange}
          }
        ]
      },
      %{
        produce: [
          %{amount: 0.25, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.25, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.PuftSpecies.PuftBleachstone}
          }
        ]
      },
      %{
        produce: [
          %{amount: 0.25, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.25, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{amount: 1, material_id: {:egg, Onicn.Critters.PuftSpecies.Puft}}
        ]
      },
      %{
        produce: [
          %{amount: 0.25, material_id: Onicn.Foods.RawEgg},
          %{amount: 0.25, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.PuftSpecies.PuftOxylite}
          }
        ]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.SquirrelSpecies.Squirrel}
          }
        ]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.HatchSpecies.HatchHard}
          }
        ]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{amount: 1, material_id: {:egg, Onicn.Critters.HatchSpecies.Hatch}}
        ]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{amount: 1, material_id: {:egg, Onicn.Critters.CrabSpecies.Crab}}
        ]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.HatchSpecies.HatchVeggie}
          }
        ]
      },
      %{
        produce: [
          %{amount: 1, material_id: Onicn.Foods.RawEgg},
          %{amount: 1, material_id: Onicn.Others.EggShell}
        ],
        require: [
          %{
            amount: 1,
            material_id: {:egg, Onicn.Critters.HatchSpecies.HatchMetal}
          }
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.ResearchCenter,
    recipes: [
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.Alpha}],
        require: [%{amount: 50, material_id: Onicn.Elements.Dirt}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.AdvancedResearchCenter,
    recipes: [
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.Beta}],
        require: [%{amount: 50, material_id: Onicn.Elements.Water}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.CosmicResearchCenter,
    recipes: [
      %{
        produce: [%{amount: 1, material_id: Onicn.Others.Gamma}],
        require: [%{amount: 1, material_id: Onicn.Others.ResearchDataBank}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.GourmetCookingStation,
    recipes: [
      %{
        produce: [%{material_id: Onicn.Elements.CarbonDioxide, min_temp: 75, rate: 0.025}],
        require: [%{material_id: Onicn.Elements.Methane, rate: 0.1}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.MineralDeoxidizer,
    recipes: [
      %{
        produce: [%{material_id: Onicn.Elements.Oxygen, min_temp: 30, rate: 0.5}],
        require: [%{material_id: Onicn.Elements.Algae, rate: 0.55}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.AlgaeHabitat,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Oxygen, min_temp: 30, rate: 0.04},
          %{material_id: Onicn.Elements.DirtyWater, min_temp: 30, rate: 0.3}
        ],
        require: [
          %{material_id: Onicn.Elements.Algae, rate: 0.03},
          %{material_id: Onicn.Elements.Water, rate: 0.3},
          %{material_id: Onicn.Elements.CarbonDioxide, rate: 0.0003}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.AirFilter,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Clay, rate: 0.14},
          %{material_id: Onicn.Elements.Oxygen, rate: 0.09}
        ],
        require: [
          %{material_id: Onicn.Elements.Regolith, rate: 0.13333334},
          %{material_id: Onicn.Elements.ContaminatedOxygen, rate: 0.1}
        ]
      },
      %{
        produce: [
          %{material_id: Onicn.Elements.Clay, rate: 0.14},
          %{material_id: Onicn.Elements.Oxygen, rate: 0.09}
        ],
        require: [
          %{material_id: Onicn.Elements.Sand, rate: 0.13333334},
          %{material_id: Onicn.Elements.ContaminatedOxygen, rate: 0.1}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.CO2Scrubber,
    recipes: [
      %{
        produce: [%{material_id: Onicn.Elements.DirtyWater, rate: 1}],
        require: [
          %{material_id: Onicn.Elements.Water, rate: 1},
          %{material_id: Onicn.Elements.CarbonDioxide, rate: 0.3}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.Electrolyzer,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Oxygen, min_temp: 70, rate: 0.888},
          %{material_id: Onicn.Elements.Hydrogen, min_temp: 70, rate: 0.112}
        ],
        require: [%{material_id: Onicn.Elements.Water, rate: 1}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.RustDeoxidizer,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Oxygen, min_temp: 75, rate: 0.57},
          %{material_id: Onicn.Elements.ChlorineGas, min_temp: 75, rate: 0.03},
          %{material_id: Onicn.Elements.IronOre, min_temp: 75, rate: 0.4}
        ],
        require: [
          %{material_id: Onicn.Elements.Rust, rate: 0.75},
          %{material_id: Onicn.Elements.Salt, rate: 0.25}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.Generator,
    recipes: [
      %{
        produce: [%{material_id: Onicn.Elements.CarbonDioxide, min_temp: 110, rate: 0.02}],
        require: [%{material_id: Onicn.Elements.Carbon, rate: 1}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.WoodGasGenerator,
    recipes: [
      %{
        produce: [%{material_id: Onicn.Elements.CarbonDioxide, min_temp: 110, rate: 0.17}],
        require: [%{material_id: Onicn.Others.Wood, rate: 1.2}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.MethaneGenerator,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.DirtyWater, min_temp: 40, rate: 0.0675},
          %{material_id: Onicn.Elements.CarbonDioxide, min_temp: 110, rate: 0.0225}
        ],
        require: [%{material_id: Onicn.Elements.Methane, rate: 0.09}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.PetroleumGenerator,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.CarbonDioxide, min_temp: 110, rate: 0.5},
          %{material_id: Onicn.Elements.DirtyWater, min_temp: 40, rate: 0.75}
        ],
        require: [%{material_id: Onicn.Elements.Petroleum, rate: 2}]
      },
      %{
        produce: [
          %{material_id: Onicn.Elements.CarbonDioxide, min_temp: 110, rate: 0.5},
          %{material_id: Onicn.Elements.DirtyWater, min_temp: 40, rate: 0.75}
        ],
        require: [%{material_id: Onicn.Elements.Ethanol, rate: 2}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.Shower,
    recipes: [
      %{
        produce: [%{material_id: Onicn.Elements.DirtyWater, rate: 1}],
        require: [%{material_id: Onicn.Elements.Water, rate: 1}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.Compost,
    recipes: [
      %{
        produce: [%{material_id: Onicn.Elements.Dirt, min_temp: 75, rate: 0.1}],
        require: [%{material_id: Onicn.Elements.ToxicSand, rate: 0.1}]
      },
      %{
        produce: [%{material_id: Onicn.Elements.Dirt, min_temp: 75, rate: 0.1}],
        require: [%{material_id: Onicn.Others.RotPile, rate: 0.1}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.WaterPurifier,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Water, rate: 5},
          %{material_id: Onicn.Elements.ToxicSand, rate: 0.2}
        ],
        require: [
          %{material_id: Onicn.Elements.Regolith, rate: 1},
          %{material_id: Onicn.Elements.DirtyWater, rate: 5}
        ]
      },
      %{
        produce: [
          %{material_id: Onicn.Elements.Water, rate: 5},
          %{material_id: Onicn.Elements.ToxicSand, rate: 0.2}
        ],
        require: [
          %{material_id: Onicn.Elements.Sand, rate: 1},
          %{material_id: Onicn.Elements.DirtyWater, rate: 5}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.Desalinator,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Water, min_temp: 40, rate: 3.5},
          %{material_id: Onicn.Elements.Salt, min_temp: 40, rate: 1.5}
        ],
        require: [
          %{material_id: Onicn.Elements.Brine, rate: 5}
        ]
      },
      %{
        produce: [
          %{material_id: Onicn.Elements.Water, rate: 4.65},
          %{material_id: Onicn.Elements.Salt, rate: 0.35}
        ],
        require: [
          %{material_id: Onicn.Elements.SaltWater, rate: 5}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.FertilizerMaker,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Fertilizer, min_temp: 50, rate: 0.12},
          %{material_id: Onicn.Elements.Methane, min_temp: 76, rate: 0.01}
        ],
        require: [
          %{material_id: Onicn.Elements.DirtyWater, rate: 0.039},
          %{material_id: Onicn.Elements.Dirt, rate: 0.065},
          %{material_id: Onicn.Elements.Phosphorite, rate: 0.026}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.AlgaeDistillery,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Algae, min_temp: 30, rate: 0.2},
          %{material_id: Onicn.Elements.DirtyWater, min_temp: 30, rate: 0.4}
        ],
        require: [%{material_id: Onicn.Elements.SlimeMold, rate: 0.6}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.EthanolDistillery,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Ethanol, min_temp: 73, rate: 0.5},
          %{material_id: Onicn.Elements.ToxicSand, min_temp: 93, rate: 0.333},
          %{material_id: Onicn.Elements.CarbonDioxide, min_temp: 93, rate: 0.167}
        ],
        require: [%{material_id: Onicn.Others.Wood, rate: 1}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.OilRefinery,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Petroleum, min_temp: 75, rate: 5},
          %{material_id: Onicn.Elements.Methane, min_temp: 75, rate: 0.09}
        ],
        require: [%{material_id: Onicn.Elements.CrudeOil, rate: 10}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.Polymerizer,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.Polypropylene, min_temp: 75, rate: 0.5},
          %{material_id: Onicn.Elements.Steam, min_temp: 200, rate: 0.0083},
          %{material_id: Onicn.Elements.CarbonDioxide, min_temp: 150, rate: 0.0083}
        ],
        require: [%{material_id: Onicn.Elements.Petroleum, rate: 0.83}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.OxyliteRefinery,
    recipes: [
      %{
        produce: [%{material_id: Onicn.Elements.OxyRock, min_temp: 30, rate: 0.6}],
        require: [
          %{material_id: Onicn.Elements.Oxygen, rate: 0.6},
          %{material_id: Onicn.Elements.Gold, rate: 0.003}
        ]
      }
    ]
  },
  %{
    name: Onicn.Buildings.OilWellCap,
    recipes: [
      %{
        produce: [
          %{material_id: Onicn.Elements.CrudeOil, min_temp: 90, rate: 3.33},
          %{material_id: Onicn.Elements.Methane, min_temp: 300, rate: 0.03}
        ],
        require: [%{material_id: Onicn.Elements.Water, rate: 1}]
      }
    ]
  },
  %{
    name: Onicn.Buildings.FlushToilet,
    recipes: [
      %{
        produce: [%{material_id: Onicn.Elements.DirtyWater, min_temp: 37, amount: 11.7}],
        require: [%{material_id: Onicn.Elements.Water, amount: 5}]
      }
    ]
  }
]
