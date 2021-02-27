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
  }
]
