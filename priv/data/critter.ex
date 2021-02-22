[
  %{
    age_max: 25,
    base_incubation_rate_per_cycle: 20,
    base_lay_egg_chances: [
      %{name: "light_bug_orange_egg", weight: 0.33},
      %{name: "light_bug_purple_egg", weight: 0.66},
      %{name: "light_bug_pink_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 15,
    breeding_modifier: [
      %{
        element: "grilledpricklefruit",
        modify_to: "light_bug_orange_egg",
        rate: 0.00125,
        type: "diet"
      },
      %{element: "friedmushroom", modify_to: "light_bug_purple_egg", rate: 0.00125, type: "diet"},
      %{element: "spicebread", modify_to: "light_bug_pink_egg", rate: 0.00125, type: "diet"}
    ],
    decor: 50,
    decor_radius: 7,
    diet: [
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "fried_mushroom",
        produced_element: ""
      },
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "grilled_prickle_fruit",
        produced_element: ""
      },
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "spice_nut", produced_element: ""},
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "spice_bread",
        produced_element: ""
      },
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "phosphorite", produced_element: ""}
    ],
    hp: 5,
    k_calories_per_cycle: -40,
    k_calories_stomach_size: 320,
    name: "light_bug_purple",
    space_required: 12,
    temperature_max_comfort: 40,
    temperature_max_liveable: 50,
    temperature_min_comfort: -10,
    temperature_min_liveable: -20
  },
  %{
    age_max: 100,
    base_incubation_rate_per_cycle: 5,
    base_lay_egg_chances: [%{name: "mole_egg", weight: 0.98}],
    base_lay_egg_cycles: 60,
    death_drop_item: "meat",
    death_drop_item_amount: 10,
    decor: 0,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 1000,
        conversion_ratio: 0.5,
        element: "regolith",
        produced_element: "regolith"
      },
      %{calories_per_kg: 1000, conversion_ratio: 0.5, element: "dirt", produced_element: "dirt"},
      %{
        calories_per_kg: 1000,
        conversion_ratio: 0.5,
        element: "iron_ore",
        produced_element: "iron_ore"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -4800,
    k_calories_stomach_size: 48000,
    name: "mole",
    space_required: 0,
    temperature_max_comfort: 400,
    temperature_max_liveable: 500,
    temperature_min_comfort: -150,
    temperature_min_liveable: -200
  },
  %{
    age_max: 75,
    base_incubation_rate_per_cycle: 0,
    death_drop_item: "meat",
    death_drop_item_amount: 10,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 100_000,
        conversion_ratio: 5,
        element: "gas_grass",
        produced_element: "methane"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -200,
    k_calories_stomach_size: 1200,
    name: "moo",
    space_required: 16,
    temperature_max_comfort: 150,
    temperature_max_liveable: 200,
    temperature_min_comfort: -150,
    temperature_min_liveable: -200
  },
  %{
    age_max: 100,
    base_incubation_rate_per_cycle: 5,
    base_lay_egg_chances: [
      %{name: "oil_floater_egg", weight: 0.98},
      %{name: "oil_floater_high_temp_egg", weight: 0.02},
      %{name: "oil_floater_decor_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 60,
    breeding_modifier: [
      %{
        max_temp: 250,
        min_temp: 100,
        modify_to: "oil_floater_high_temp_egg",
        rate: 8.333333e-5,
        type: "temperature"
      },
      %{
        max_temp: 60,
        min_temp: 20,
        modify_to: "oil_floater_decor_egg",
        rate: 8.333333e-5,
        type: "temperature"
      }
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 2,
    decor: 15,
    decor_radius: 2,
    diet: [
      %{
        calories_per_kg: 6000,
        conversion_ratio: 0.5,
        element: "carbon_dioxide",
        produced_element: "crude_oil"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -120,
    k_calories_stomach_size: 600,
    name: "oil_floater",
    space_required: 12,
    temperature_max_comfort: 140,
    temperature_max_liveable: 160,
    temperature_min_comfort: 50,
    temperature_min_liveable: 35
  },
  %{
    age_max: 150,
    base_incubation_rate_per_cycle: 3.333333414,
    base_lay_egg_chances: [
      %{name: "oil_floater_egg", weight: 0.33},
      %{name: "oil_floater_high_temp_egg", weight: 0.02},
      %{name: "oil_floater_decor_egg", weight: 0.66}
    ],
    base_lay_egg_cycles: 90,
    breeding_modifier: [
      %{
        max_temp: 250,
        min_temp: 100,
        modify_to: "oil_floater_high_temp_egg",
        rate: 8.333333e-5,
        type: "temperature"
      },
      %{
        max_temp: 60,
        min_temp: 20,
        modify_to: "oil_floater_decor_egg",
        rate: 8.333333e-5,
        type: "temperature"
      }
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 2,
    decor: 50,
    decor_radius: 7,
    diet: [%{calories_per_kg: 4000, conversion_ratio: 0, element: "oxygen", produced_element: ""}],
    hp: 25,
    k_calories_per_cycle: -120,
    k_calories_stomach_size: 600,
    name: "oil_floater_decor",
    space_required: 12,
    temperature_max_comfort: 70,
    temperature_max_liveable: 90,
    temperature_min_comfort: 10,
    temperature_min_liveable: -5
  },
  %{
    age_max: 100,
    base_incubation_rate_per_cycle: 5,
    base_lay_egg_chances: [
      %{name: "oil_floater_egg", weight: 0.33},
      %{name: "oil_floater_high_temp_egg", weight: 0.66},
      %{name: "oil_floater_decor_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 60,
    breeding_modifier: [
      %{
        max_temp: 250,
        min_temp: 100,
        modify_to: "oil_floater_high_temp_egg",
        rate: 8.333333e-5,
        type: "temperature"
      },
      %{
        max_temp: 60,
        min_temp: 20,
        modify_to: "oil_floater_decor_egg",
        rate: 8.333333e-5,
        type: "temperature"
      }
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 2,
    decor: 15,
    decor_radius: 2,
    diet: [
      %{
        calories_per_kg: 6000,
        conversion_ratio: 0.5,
        element: "carbon_dioxide",
        produced_element: "petroleum"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -120,
    k_calories_stomach_size: 600,
    name: "oil_floater_high_temp",
    space_required: 12,
    temperature_max_comfort: 250,
    temperature_max_liveable: 270,
    temperature_min_comfort: 90,
    temperature_min_liveable: 75
  },
  %{
    age_max: 25,
    base_incubation_rate_per_cycle: 20,
    base_lay_egg_chances: [
      %{name: "pacu_egg", weight: 0.32},
      %{name: "pacu_cleaner_egg", weight: 0.65},
      %{name: "pacu_tropical_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 15,
    breeding_modifier: [
      %{
        max_temp: 80,
        min_temp: 35,
        modify_to: "pacu_tropical_egg",
        rate: 8.333333e-5,
        type: "temperature"
      },
      %{
        max_temp: 5,
        min_temp: -30,
        modify_to: "pacu_cleaner_egg",
        rate: 8.333333e-5,
        type: "temperature"
      }
    ],
    death_drop_item: "fish_meat",
    death_drop_item_amount: 1,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 714.2857,
        conversion_ratio: 0.5,
        element: "algae",
        produced_element: "toxic_sand"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -100,
    k_calories_stomach_size: 500,
    name: "pacu_cleaner",
    space_required: 8,
    temperature_max_comfort: 5,
    temperature_max_liveable: 25,
    temperature_min_comfort: -30,
    temperature_min_liveable: -50
  },
  %{
    age_max: 25,
    base_incubation_rate_per_cycle: 20,
    base_lay_egg_chances: [
      %{name: "pacu_egg", weight: 0.98},
      %{name: "pacu_tropical_egg", weight: 0.02},
      %{name: "pacu_cleaner_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 15,
    breeding_modifier: [
      %{
        max_temp: 80,
        min_temp: 35,
        modify_to: "pacu_tropical_egg",
        rate: 8.333333e-5,
        type: "temperature"
      },
      %{
        max_temp: 5,
        min_temp: -30,
        modify_to: "pacu_cleaner_egg",
        rate: 8.333333e-5,
        type: "temperature"
      }
    ],
    death_drop_item: "fish_meat",
    death_drop_item_amount: 1,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 714.2857,
        conversion_ratio: 0.5,
        element: "algae",
        produced_element: "toxic_sand"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -100,
    k_calories_stomach_size: 500,
    name: "pacu",
    space_required: 8,
    temperature_max_comfort: 60,
    temperature_max_liveable: 80,
    temperature_min_comfort: 0,
    temperature_min_liveable: -20
  },
  %{
    age_max: 25,
    base_incubation_rate_per_cycle: 20,
    base_lay_egg_chances: [
      %{name: "pacu_egg", weight: 0.32},
      %{name: "pacu_tropical_egg", weight: 0.65},
      %{name: "pacu_cleaner_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 15,
    breeding_modifier: [
      %{
        max_temp: 80,
        min_temp: 35,
        modify_to: "pacu_tropical_egg",
        rate: 8.333333e-5,
        type: "temperature"
      },
      %{
        max_temp: 5,
        min_temp: -30,
        modify_to: "pacu_cleaner_egg",
        rate: 8.333333e-5,
        type: "temperature"
      }
    ],
    death_drop_item: "fish_meat",
    death_drop_item_amount: 1,
    decor: 25,
    decor_radius: 5,
    diet: [
      %{
        calories_per_kg: 714.2857,
        conversion_ratio: 0.5,
        element: "algae",
        produced_element: "toxic_sand"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -100,
    k_calories_stomach_size: 500,
    name: "pacu_tropical",
    space_required: 8,
    temperature_max_comfort: 80,
    temperature_max_liveable: 100,
    temperature_min_comfort: 30,
    temperature_min_liveable: 10
  },
  %{
    age_max: 75,
    base_incubation_rate_per_cycle: 6.66666684,
    base_lay_egg_chances: [
      %{name: "puft_egg", weight: 0.98},
      %{name: "puft_alpha_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 45,
    breeding_modifier: [
      %{
        creature: "puft_alpha",
        modify_to: "puft_alpha_egg",
        rate: -2.5e-4,
        reverse: true,
        type: "nearby"
      }
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 1,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 6666.6665,
        conversion_ratio: 0.1,
        element: "contaminated_oxygen",
        produced_element: "slime_mold"
      },
      %{
        calories_per_kg: 6666.6665,
        conversion_ratio: 0.1,
        element: "chlorine_gas",
        produced_element: "bleach_stone"
      },
      %{
        calories_per_kg: 6666.6665,
        conversion_ratio: 0.1,
        element: "oxygen",
        produced_element: "oxy_rock"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -200,
    k_calories_stomach_size: 1200,
    name: "puft_alpha",
    space_required: 16,
    temperature_max_comfort: 65,
    temperature_max_liveable: 115,
    temperature_min_comfort: -15,
    temperature_min_liveable: -60
  },
  %{
    age_max: 25,
    base_incubation_rate_per_cycle: 20,
    base_lay_egg_chances: [
      %{name: "light_bug_purple_egg", weight: 0.33},
      %{name: "light_bug_pink_egg", weight: 0.66},
      %{name: "light_bug_blue_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 15,
    breeding_modifier: [
      %{element: "friedmushroom", modify_to: "light_bug_purple_egg", rate: 0.00125, type: "diet"},
      %{element: "spicebread", modify_to: "light_bug_pink_egg", rate: 0.00125, type: "diet"},
      %{element: "salsa", modify_to: "light_bug_blue_egg", rate: 0.00125, type: "diet"}
    ],
    decor: 50,
    decor_radius: 7,
    diet: [
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "fried_mushroom",
        produced_element: ""
      },
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "spice_bread",
        produced_element: ""
      },
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "prickle_fruit",
        produced_element: ""
      },
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "grilled_prickle_fruit",
        produced_element: ""
      },
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "salsa", produced_element: ""},
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "phosphorite", produced_element: ""}
    ],
    hp: 5,
    k_calories_per_cycle: -40,
    k_calories_stomach_size: 320,
    name: "light_bug_pink",
    space_required: 12,
    temperature_max_comfort: 40,
    temperature_max_liveable: 50,
    temperature_min_comfort: -10,
    temperature_min_liveable: -20
  },
  %{
    age_max: 25,
    base_incubation_rate_per_cycle: 20,
    base_lay_egg_chances: [
      %{name: "light_bug_egg", weight: 0.33},
      %{name: "light_bug_orange_egg", weight: 0.66},
      %{name: "light_bug_purple_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 15,
    breeding_modifier: [
      %{
        element: "grilledpricklefruit",
        modify_to: "light_bug_orange_egg",
        rate: 0.00125,
        type: "diet"
      },
      %{element: "friedmushroom", modify_to: "light_bug_purple_egg", rate: 0.00125, type: "diet"}
    ],
    decor: 50,
    decor_radius: 7,
    diet: [
      %{calories_per_kg: 160_000, conversion_ratio: 1, element: "mushroom", produced_element: ""},
      %{
        calories_per_kg: 160_000,
        conversion_ratio: 1,
        element: "fried_mushroom",
        produced_element: ""
      },
      %{
        calories_per_kg: 160_000,
        conversion_ratio: 1,
        element: "grilled_prickle_fruit",
        produced_element: ""
      },
      %{
        calories_per_kg: 160_000,
        conversion_ratio: 1,
        element: "phosphorite",
        produced_element: ""
      }
    ],
    hp: 5,
    k_calories_per_cycle: -40,
    k_calories_stomach_size: 320,
    name: "light_bug_orange",
    space_required: 12,
    temperature_max_comfort: 40,
    temperature_max_liveable: 50,
    temperature_min_comfort: -10,
    temperature_min_liveable: -20
  },
  %{
    age_max: 100,
    base_incubation_rate_per_cycle: 5,
    base_lay_egg_chances: [%{name: "crab_egg", weight: 0.98}],
    base_lay_egg_cycles: 60,
    death_drop_item: "crab_shell",
    death_drop_item_amount: 1,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 714.2857,
        conversion_ratio: 0.5,
        element: "toxic_sand",
        produced_element: "sand"
      },
      %{
        calories_per_kg: 714.2857,
        conversion_ratio: 0.5,
        element: "rot_pile",
        produced_element: "sand"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -100,
    k_calories_stomach_size: 1000,
    name: "crab",
    space_required: 12,
    temperature_max_comfort: 70,
    temperature_max_liveable: 100,
    temperature_min_comfort: 15,
    temperature_min_liveable: -30
  },
  %{
    age_max: 150,
    base_incubation_rate_per_cycle: 3.333333414,
    base_lay_egg_chances: [
      %{name: "drecko_egg", weight: 0.98},
      %{name: "drecko_plastic_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 90,
    breeding_modifier: [
      %{
        element: "basicsingleharvestplant",
        modify_to: "drecko_plastic_egg",
        rate: 0.025,
        type: "diet"
      }
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 2,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 1_000_000,
        conversion_ratio: 5,
        element: "spice_vine",
        produced_element: "phosphorite"
      },
      %{
        calories_per_kg: 1_000_000,
        conversion_ratio: 5,
        element: "swamp_lily",
        produced_element: "phosphorite"
      },
      %{
        calories_per_kg: 1_000_000,
        conversion_ratio: 5,
        element: "basic_single_harvest_plant",
        produced_element: "phosphorite"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -2000,
    k_calories_stomach_size: 10000,
    name: "drecko",
    space_required: 12,
    temperature_max_comfort: 90,
    temperature_max_liveable: 110,
    temperature_min_comfort: 35,
    temperature_min_liveable: 15
  },
  %{
    age_max: 150,
    base_incubation_rate_per_cycle: 3.333333414,
    base_lay_egg_chances: [
      %{name: "drecko_egg", weight: 0.35},
      %{name: "drecko_plastic_egg", weight: 0.65}
    ],
    base_lay_egg_cycles: 90,
    breeding_modifier: [
      %{
        element: "basicsingleharvestplant",
        modify_to: "drecko_plastic_egg",
        rate: 0.025,
        type: "diet"
      }
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 2,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 666_666.7,
        conversion_ratio: 3,
        element: "basic_single_harvest_plant",
        produced_element: "phosphorite"
      },
      %{
        calories_per_kg: 666_666.7,
        conversion_ratio: 3,
        element: "prickle_flower",
        produced_element: "phosphorite"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -2000,
    k_calories_stomach_size: 10000,
    name: "drecko_plastic",
    space_required: 12,
    temperature_max_comfort: 60,
    temperature_max_liveable: 80,
    temperature_min_comfort: 25,
    temperature_min_liveable: 5
  },
  %{
    age_max: 0,
    base_incubation_rate_per_cycle: 0,
    decor: 10,
    decor_radius: 1,
    hp: 25,
    k_calories_per_cycle: 0,
    k_calories_stomach_size: 0,
    name: "glom",
    space_required: 0,
    temperature_max_comfort: 120,
    temperature_max_liveable: 150,
    temperature_min_comfort: 20,
    temperature_min_liveable: 0
  },
  %{
    age_max: 100,
    base_incubation_rate_per_cycle: 5,
    base_lay_egg_chances: [
      %{name: "hatch_egg", weight: 0.98},
      %{name: "hatch_hard_egg", weight: 0.02},
      %{name: "hatch_veggie_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 60,
    breeding_modifier: [
      %{element: "sedimentaryrock", modify_to: "hatch_hard_egg", rate: 0.05, type: "diet"},
      %{element: "dirt", modify_to: "hatch_veggie_egg", rate: 0.05, type: "diet"}
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 2,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.5,
        element: "sand",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.5,
        element: "sand_stone",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.5,
        element: "clay",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.5,
        element: "crushed_rock",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.5,
        element: "dirt",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.5,
        element: "sedimentary_rock",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 800_000,
        conversion_ratio: 0.75,
        element: "field_ration",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 800_000,
        conversion_ratio: 0.75,
        element: "mush_bar",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 600_000,
        conversion_ratio: 0.75,
        element: "basic_plant_food",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 800_000,
        conversion_ratio: 0.75,
        element: "basic_forage_plant",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 6_400_000,
        conversion_ratio: 0.75,
        element: "forest_forage_plant",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 2_400_000,
        conversion_ratio: 0.75,
        element: "mushroom",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 400_000,
        conversion_ratio: 0.75,
        element: "lettuce",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_600_000,
        conversion_ratio: 0.75,
        element: "meat",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_600_000,
        conversion_ratio: 0.75,
        element: "prickle_fruit",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_000_000,
        conversion_ratio: 0.75,
        element: "fish_meat",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_800_000,
        conversion_ratio: 0.75,
        element: "pickled_meal",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_700_000,
        conversion_ratio: 0.75,
        element: "basic_plant_bar",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_050_000,
        conversion_ratio: 0.75,
        element: "fried_mush_bar",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 2_000_000,
        conversion_ratio: 0.75,
        element: "grilled_prickle_fruit",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 2_800_000,
        conversion_ratio: 0.75,
        element: "fried_mushroom",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_200_000,
        conversion_ratio: 0.75,
        element: "cold_wheat_bread",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 2_800_000,
        conversion_ratio: 0.75,
        element: "cooked_egg",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_600_000,
        conversion_ratio: 0.75,
        element: "cooked_fish",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_000_000,
        conversion_ratio: 0.75,
        element: "cooked_meat",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_000_000,
        conversion_ratio: 0.75,
        element: "fruit_cake",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_400_000,
        conversion_ratio: 0.75,
        element: "salsa",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 6_000_000,
        conversion_ratio: 0.75,
        element: "surf_and_turf",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_800_000,
        conversion_ratio: 0.75,
        element: "mushroom_wrap",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 3_600_000,
        conversion_ratio: 0.75,
        element: "tofu",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_000_000,
        conversion_ratio: 0.75,
        element: "spice_bread",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_000_000,
        conversion_ratio: 0.75,
        element: "spicy_tofu",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 6_000_000,
        conversion_ratio: 0.75,
        element: "burger",
        produced_element: "carbon"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -700,
    k_calories_stomach_size: 7000,
    name: "hatch",
    space_required: 12,
    temperature_max_comfort: 20,
    temperature_max_liveable: 70,
    temperature_min_comfort: 10,
    temperature_min_liveable: -30
  },
  %{
    age_max: 100,
    base_incubation_rate_per_cycle: 5,
    base_lay_egg_chances: [
      %{name: "hatch_egg", weight: 0.32},
      %{name: "hatch_hard_egg", weight: 0.65},
      %{name: "hatch_metal_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 60,
    breeding_modifier: [
      %{element: "sedimentaryrock", modify_to: "hatch_hard_egg", rate: 0.05, type: "diet"},
      %{element: "cuprite", modify_to: "hatch_metal_egg", rate: 0.05, type: "diet"},
      %{element: "goldamalgam", modify_to: "hatch_metal_egg", rate: 0.05, type: "diet"},
      %{element: "ironore", modify_to: "hatch_metal_egg", rate: 0.05, type: "diet"},
      %{element: "wolframite", modify_to: "hatch_metal_egg", rate: 0.05, type: "diet"}
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 2,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.5,
        element: "sedimentary_rock",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.5,
        element: "igneous_rock",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.5,
        element: "obsidian",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.5,
        element: "granite",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.25,
        element: "cuprite",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.25,
        element: "gold_amalgam",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.25,
        element: "iron_ore",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.25,
        element: "wolframite",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.25,
        element: "aluminum_ore",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 0.25,
        element: "electrum",
        produced_element: "carbon"
      }
    ],
    hp: 200,
    k_calories_per_cycle: -700,
    k_calories_stomach_size: 7000,
    name: "hatch_hard",
    space_required: 12,
    temperature_max_comfort: 20,
    temperature_max_liveable: 70,
    temperature_min_comfort: 10,
    temperature_min_liveable: -30
  },
  %{
    age_max: 100,
    base_incubation_rate_per_cycle: 5,
    base_lay_egg_chances: [
      %{name: "hatch_egg", weight: 0.11},
      %{name: "hatch_hard_egg", weight: 0.22},
      %{name: "hatch_metal_egg", weight: 0.67}
    ],
    base_lay_egg_cycles: 60,
    breeding_modifier: [
      %{element: "sedimentaryrock", modify_to: "hatch_hard_egg", rate: 0.05, type: "diet"},
      %{element: "cuprite", modify_to: "hatch_metal_egg", rate: 0.05, type: "diet"},
      %{element: "goldamalgam", modify_to: "hatch_metal_egg", rate: 0.05, type: "diet"},
      %{element: "ironore", modify_to: "hatch_metal_egg", rate: 0.05, type: "diet"},
      %{element: "wolframite", modify_to: "hatch_metal_egg", rate: 0.05, type: "diet"}
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 2,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 7000,
        conversion_ratio: 0.75,
        element: "cuprite",
        produced_element: "copper"
      },
      %{
        calories_per_kg: 7000,
        conversion_ratio: 0.75,
        element: "gold_amalgam",
        produced_element: "gold"
      },
      %{
        calories_per_kg: 7000,
        conversion_ratio: 0.75,
        element: "iron_ore",
        produced_element: "iron"
      },
      %{
        calories_per_kg: 7000,
        conversion_ratio: 0.75,
        element: "wolframite",
        produced_element: "tungsten"
      },
      %{
        calories_per_kg: 7000,
        conversion_ratio: 0.75,
        element: "aluminum_ore",
        produced_element: "aluminum"
      },
      %{
        calories_per_kg: 7000,
        conversion_ratio: 0.75,
        element: "electrum",
        produced_element: "gold"
      }
    ],
    hp: 400,
    k_calories_per_cycle: -700,
    k_calories_stomach_size: 7000,
    name: "hatch_metal",
    space_required: 12,
    temperature_max_comfort: 20,
    temperature_max_liveable: 70,
    temperature_min_comfort: 10,
    temperature_min_liveable: -30
  },
  %{
    age_max: 100,
    base_incubation_rate_per_cycle: 5,
    base_lay_egg_chances: [
      %{name: "hatch_egg", weight: 0.33},
      %{name: "hatch_veggie_egg", weight: 0.67}
    ],
    base_lay_egg_cycles: 60,
    breeding_modifier: [
      %{element: "dirt", modify_to: "hatch_veggie_egg", rate: 0.05, type: "diet"}
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 2,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{calories_per_kg: 5000, conversion_ratio: 1, element: "dirt", produced_element: "carbon"},
      %{
        calories_per_kg: 5000,
        conversion_ratio: 1,
        element: "slime_mold",
        produced_element: "carbon"
      },
      %{calories_per_kg: 5000, conversion_ratio: 1, element: "algae", produced_element: "carbon"},
      %{
        calories_per_kg: 5000,
        conversion_ratio: 1,
        element: "fertilizer",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 5000,
        conversion_ratio: 1,
        element: "toxic_sand",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 800_000,
        conversion_ratio: 1,
        element: "field_ration",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 800_000,
        conversion_ratio: 1,
        element: "mush_bar",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 600_000,
        conversion_ratio: 1,
        element: "basic_plant_food",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 800_000,
        conversion_ratio: 1,
        element: "basic_forage_plant",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 6_400_000,
        conversion_ratio: 1,
        element: "forest_forage_plant",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 2_400_000,
        conversion_ratio: 1,
        element: "mushroom",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 400_000,
        conversion_ratio: 1,
        element: "lettuce",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_600_000,
        conversion_ratio: 1,
        element: "meat",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_600_000,
        conversion_ratio: 1,
        element: "prickle_fruit",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_000_000,
        conversion_ratio: 1,
        element: "fish_meat",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_800_000,
        conversion_ratio: 1,
        element: "pickled_meal",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_700_000,
        conversion_ratio: 1,
        element: "basic_plant_bar",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_050_000,
        conversion_ratio: 1,
        element: "fried_mush_bar",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 2_000_000,
        conversion_ratio: 1,
        element: "grilled_prickle_fruit",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 2_800_000,
        conversion_ratio: 1,
        element: "fried_mushroom",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_200_000,
        conversion_ratio: 1,
        element: "cold_wheat_bread",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 2_800_000,
        conversion_ratio: 1,
        element: "cooked_egg",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 1_600_000,
        conversion_ratio: 1,
        element: "cooked_fish",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_000_000,
        conversion_ratio: 1,
        element: "cooked_meat",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_000_000,
        conversion_ratio: 1,
        element: "fruit_cake",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_400_000,
        conversion_ratio: 1,
        element: "salsa",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 6_000_000,
        conversion_ratio: 1,
        element: "surf_and_turf",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_800_000,
        conversion_ratio: 1,
        element: "mushroom_wrap",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 3_600_000,
        conversion_ratio: 1,
        element: "tofu",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_000_000,
        conversion_ratio: 1,
        element: "spice_bread",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 4_000_000,
        conversion_ratio: 1,
        element: "spicy_tofu",
        produced_element: "carbon"
      },
      %{
        calories_per_kg: 6_000_000,
        conversion_ratio: 1,
        element: "burger",
        produced_element: "carbon"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -700,
    k_calories_stomach_size: 7000,
    name: "hatch_veggie",
    space_required: 12,
    temperature_max_comfort: 20,
    temperature_max_liveable: 70,
    temperature_min_comfort: 10,
    temperature_min_liveable: -30
  },
  %{
    age_max: 75,
    base_incubation_rate_per_cycle: 6.66666684,
    base_lay_egg_chances: [
      %{name: "light_bug_blue_egg", weight: 0.33},
      %{name: "light_bug_black_egg", weight: 0.66},
      %{name: "light_bug_crystal_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 45,
    breeding_modifier: [
      %{element: "salsa", modify_to: "light_bug_blue_egg", rate: 0.00125, type: "diet"},
      %{element: "phosphorus", modify_to: "light_bug_black_egg", rate: 0.00125, type: "diet"},
      %{element: "cookedmeat", modify_to: "light_bug_crystal_egg", rate: 0.00125, type: "diet"}
    ],
    decor: 80,
    decor_radius: 7,
    diet: [
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "salsa", produced_element: ""},
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "meat", produced_element: ""},
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "cooked_meat",
        produced_element: ""
      },
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "katairite", produced_element: ""},
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "phosphorus", produced_element: ""}
    ],
    hp: 5,
    k_calories_per_cycle: -40,
    k_calories_stomach_size: 320,
    name: "light_bug_black",
    space_required: 12,
    temperature_max_comfort: 40,
    temperature_max_liveable: 50,
    temperature_min_comfort: -10,
    temperature_min_liveable: -20
  },
  %{
    age_max: 25,
    base_incubation_rate_per_cycle: 20,
    base_lay_egg_chances: [
      %{name: "light_bug_pink_egg", weight: 0.33},
      %{name: "light_bug_blue_egg", weight: 0.66},
      %{name: "light_bug_black_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 15,
    breeding_modifier: [
      %{element: "spicebread", modify_to: "light_bug_pink_egg", rate: 0.00125, type: "diet"},
      %{element: "salsa", modify_to: "light_bug_blue_egg", rate: 0.00125, type: "diet"},
      %{element: "phosphorus", modify_to: "light_bug_black_egg", rate: 0.00125, type: "diet"}
    ],
    decor: 50,
    decor_radius: 7,
    diet: [
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "spice_bread",
        produced_element: ""
      },
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "salsa", produced_element: ""},
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "phosphorite",
        produced_element: ""
      },
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "phosphorus", produced_element: ""}
    ],
    hp: 5,
    k_calories_per_cycle: -40,
    k_calories_stomach_size: 320,
    name: "light_bug_blue",
    space_required: 12,
    temperature_max_comfort: 40,
    temperature_max_liveable: 50,
    temperature_min_comfort: -10,
    temperature_min_liveable: -20
  },
  %{
    age_max: 25,
    base_incubation_rate_per_cycle: 20,
    base_lay_egg_chances: [
      %{name: "light_bug_egg", weight: 0.98},
      %{name: "light_bug_orange_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 15,
    breeding_modifier: [
      %{
        element: "grilledpricklefruit",
        modify_to: "light_bug_orange_egg",
        rate: 0.00125,
        type: "diet"
      }
    ],
    decor: 30,
    decor_radius: 5,
    diet: [
      %{
        calories_per_kg: 240_963.859,
        conversion_ratio: 1,
        element: "prickle_fruit",
        produced_element: ""
      },
      %{
        calories_per_kg: 240_963.859,
        conversion_ratio: 1,
        element: "grilled_prickle_fruit",
        produced_element: ""
      },
      %{
        calories_per_kg: 240_963.859,
        conversion_ratio: 1,
        element: "phosphorite",
        produced_element: ""
      }
    ],
    hp: 5,
    k_calories_per_cycle: -40,
    k_calories_stomach_size: 320,
    name: "light_bug",
    space_required: 12,
    temperature_max_comfort: 40,
    temperature_max_liveable: 50,
    temperature_min_comfort: -10,
    temperature_min_liveable: -20
  },
  %{
    age_max: 75,
    base_incubation_rate_per_cycle: 6.66666684,
    base_lay_egg_chances: [
      %{name: "light_bug_crystal_egg", weight: 0.98},
      %{name: "light_bug_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 45,
    breeding_modifier: [
      %{element: "cookedmeat", modify_to: "light_bug_crystal_egg", rate: 0.00125, type: "diet"}
    ],
    decor: 200,
    decor_radius: 8,
    diet: [
      %{
        calories_per_kg: 40000,
        conversion_ratio: 1,
        element: "cooked_meat",
        produced_element: ""
      },
      %{calories_per_kg: 40000, conversion_ratio: 1, element: "diamond", produced_element: ""}
    ],
    hp: 5,
    k_calories_per_cycle: -40,
    k_calories_stomach_size: 320,
    name: "light_bug_crystal",
    space_required: 12,
    temperature_max_comfort: 40,
    temperature_max_liveable: 50,
    temperature_min_comfort: -10,
    temperature_min_liveable: -20
  },
  %{
    age_max: 75,
    base_incubation_rate_per_cycle: 6.66666684,
    base_lay_egg_chances: [
      %{name: "puft_egg", weight: 0.31},
      %{name: "puft_alpha_egg", weight: 0.02},
      %{name: "puft_bleachstone_egg", weight: 0.67}
    ],
    base_lay_egg_cycles: 45,
    breeding_modifier: [
      %{
        creature: "puft_alpha",
        modify_to: "puft_alpha_egg",
        rate: -2.5e-4,
        reverse: true,
        type: "nearby"
      },
      %{
        creature: "puft_alpha",
        modify_to: "puft_bleachstone_egg",
        rate: 8.333333e-5,
        reverse: false,
        type: "nearby"
      }
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 1,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 6666.6665,
        conversion_ratio: 0.95,
        element: "chlorine_gas",
        produced_element: "bleach_stone"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -200,
    k_calories_stomach_size: 1200,
    name: "puft_bleachstone",
    space_required: 16,
    temperature_max_comfort: 35,
    temperature_max_liveable: 85,
    temperature_min_comfort: -15,
    temperature_min_liveable: -60
  },
  %{
    age_max: 75,
    base_incubation_rate_per_cycle: 6.66666684,
    base_lay_egg_chances: [
      %{name: "puft_egg", weight: 0.98},
      %{name: "puft_alpha_egg", weight: 0.02},
      %{name: "puft_oxylite_egg", weight: 0.02},
      %{name: "puft_bleachstone_egg", weight: 0.02}
    ],
    base_lay_egg_cycles: 45,
    breeding_modifier: [
      %{
        creature: "puft_alpha",
        modify_to: "puft_alpha_egg",
        rate: -2.5e-4,
        reverse: true,
        type: "nearby"
      },
      %{
        creature: "puft_alpha",
        modify_to: "puft_oxylite_egg",
        rate: 8.333333e-5,
        reverse: false,
        type: "nearby"
      },
      %{
        creature: "puft_alpha",
        modify_to: "puft_bleachstone_egg",
        rate: 8.333333e-5,
        reverse: false,
        type: "nearby"
      }
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 1,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 4000,
        conversion_ratio: 0.95,
        element: "contaminated_oxygen",
        produced_element: "slime_mold"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -200,
    k_calories_stomach_size: 1200,
    name: "puft",
    space_required: 16,
    temperature_max_comfort: 55,
    temperature_max_liveable: 105,
    temperature_min_comfort: 15,
    temperature_min_liveable: -30
  },
  %{
    age_max: 75,
    base_incubation_rate_per_cycle: 6.66666684,
    base_lay_egg_chances: [
      %{name: "puft_egg", weight: 0.31},
      %{name: "puft_alpha_egg", weight: 0.02},
      %{name: "puft_oxylite_egg", weight: 0.67}
    ],
    base_lay_egg_cycles: 45,
    breeding_modifier: [
      %{
        creature: "puft_alpha",
        modify_to: "puft_alpha_egg",
        rate: -2.5e-4,
        reverse: true,
        type: "nearby"
      },
      %{
        creature: "puft_alpha",
        modify_to: "puft_oxylite_egg",
        rate: 8.333333e-5,
        reverse: false,
        type: "nearby"
      }
    ],
    death_drop_item: "meat",
    death_drop_item_amount: 1,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 4000,
        conversion_ratio: 0.95,
        element: "oxygen",
        produced_element: "oxy_rock"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -200,
    k_calories_stomach_size: 1200,
    name: "puft_oxylite",
    space_required: 16,
    temperature_max_comfort: 65,
    temperature_max_liveable: 115,
    temperature_min_comfort: 30,
    temperature_min_liveable: -15
  },
  %{
    age_max: 100,
    base_incubation_rate_per_cycle: 5,
    base_lay_egg_chances: [%{name: "squirrel_egg", weight: 0.98}],
    base_lay_egg_cycles: 60,
    death_drop_item: "meat",
    death_drop_item_amount: 1,
    decor: 10,
    decor_radius: 1,
    diet: [
      %{
        calories_per_kg: 250_000,
        conversion_ratio: 50,
        element: "forest_tree",
        produced_element: "dirt"
      }
    ],
    hp: 25,
    k_calories_per_cycle: -100,
    k_calories_stomach_size: 1000,
    name: "squirrel",
    space_required: 12,
    temperature_max_comfort: 20,
    temperature_max_liveable: 70,
    temperature_min_comfort: 10,
    temperature_min_liveable: -30
  }
]
