PlaceObj('ModItemLootDef', {
	id = "LootDef_AK74Mag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "AK74Magazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_AK74MagExpanded",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "AK74MagazineExpanded",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_BHPMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "BHPMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_BerettaMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "BerettaMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_DesertEagleMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "DesertEagleMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_AR15Mag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "AR15Magazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_GlockMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "GlockMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_MP40Mag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "MP40Magazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_UZIMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "UZIMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_STANAGMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "STANAGMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_AugMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "AUGMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_FAMASMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "FAMASMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_FNFALMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "FNFALMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_GalilMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "GalilMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_M14Mag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "M14Magazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_MP5Mag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "MP5MagazineNormal",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_SVDMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "SVDMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_HK21",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "HK21Magazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_FNMinimiMag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "FNMinimiMagazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	id = "LootDef_AK47Mag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "AK47Magazine",
		stack_max = 2,
		stack_min = 1,
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	id = "LegionRaiders",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 83,
		RandomizeCondition = true,
		item = "AK47",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_OnlyPants_T1",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_44cal_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK47Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionRaider_Stronger",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 97,
		RandomizeCondition = true,
		item = "M14SAW",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_M14Mag",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_OnlyPants_T2",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied_Legion",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionRaider_Stronger_Elite",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 97,
		RandomizeCondition = true,
		item = "FNFAL",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_OnlyPants_T3",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_FNFALMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionSniper_Stronger",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 75,
		RandomizeCondition = true,
		item = "M24Sniper",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Head_T2",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_M14Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionSniper_Stronger_Elite",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 75,
		RandomizeCondition = true,
		item = "M24Sniper",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Head_T3",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_M14Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionGoon",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		RandomizeCondition = true,
		item = "HiPower",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T1",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_44cal_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_BHPMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionGoon_Stronger",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "Bereta92",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T2",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_BerettaMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionGoon_Stronger_Elite",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "Bereta92",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T3",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_BerettaMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionGrenadier_Stronger",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 81,
		RandomizeCondition = true,
		item = "MP5",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionsExplosives",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T2",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_MP5Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionGrenadier_Stronger_Elite",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 81,
		RandomizeCondition = true,
		item = "MP5",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionsExplosives",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T3",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_MP5Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionGrenadier_Stronger_Elite_Molotov",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 81,
		RandomizeCondition = true,
		item = "MP5",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T3",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied_Legion",
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "PostApoHelmet",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Molotov",
		stack_max = 5,
		stack_min = 5,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_MP5Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionMedic",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 80,
		RandomizeCondition = true,
		item = "HiPower",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FirstAidKit",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Head_T1",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "MedsDrop",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_BHPMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionMortarman",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 81,
		RandomizeCondition = true,
		item = "MortarInventoryItem",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "AK47",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T1",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_MortarShell_HE",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK47Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionRocketeer_SlowReloader",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 81,
		RandomizeCondition = true,
		item = "RPG7",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T1",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_Warhead",
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 52,
		RandomizeCondition = true,
		item = "FAMAS",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_556_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_FAMASMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionScout",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 82,
		RandomizeCondition = true,
		item = "MP40",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T1",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_MP40Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionScout_Stronger",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 82,
		RandomizeCondition = true,
		item = "UZI",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T2",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_MP40Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionScout_Stronger_Elite",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 82,
		RandomizeCondition = true,
		item = "AKSU",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Body_T3",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK74Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionSentry",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"ReflexSight",
		},
		weapon = "FAMAS",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Head_T1",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_556_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_FAMASMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionSentry_Stronger",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"ReflexSight",
		},
		weapon = "M16A2",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Head_T2",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_556_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_STANAGMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion",
	group = "Enemy - Legion",
	id = "LegionSentry_Stronger_Elite",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"ReflexSight",
		},
		weapon = "AR15",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_Pants_Head_T3",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_556_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AR15Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy legion tutorial",
	group = "Enemy - Legion",
	id = "Minion",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "HiPower",
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "JunkDrop",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Basic",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_BHPMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy boss",
	group = "Enemy - Legion",
	id = "Pierre",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		drop_chance_mod = 1000,
		game_conditions = {
			PlaceObj('PlayerIsInSectors', {
				Negate = true,
				Sectors = {
					"F19",
				},
			}),
		},
		guaranteed = true,
		item = "AK47",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		game_conditions = {
			PlaceObj('PlayerIsInSectors', {
				Negate = true,
				Sectors = {
					"F19",
				},
			}),
		},
		item = "PierreMachete",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		game_conditions = {
			PlaceObj('PlayerIsInSectors', {
				Negate = true,
				Sectors = {
					"F19",
				},
			}),
		},
		item = "HeavyArmorChestplate_CeramicPlates",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		game_conditions = {
			PlaceObj('PlayerIsInSectors', {
				Negate = true,
				Sectors = {
					"F19",
				},
			}),
		},
		item = "HeavyArmorHelmet_WeavePadding",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		game_conditions = {
			PlaceObj('PlayerIsInSectors', {
				Negate = true,
				Sectors = {
					"F19",
				},
			}),
		},
		item = "FlakLeggings_WeavePadding",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		drop_chance_mod = 1000,
		game_conditions = {
			PlaceObj('PlayerIsInSectors', {
				Negate = true,
				Sectors = {
					"F19",
				},
			}),
		},
		guaranteed = true,
		item = "TinyDiamonds",
		stack_max = 5,
		stack_min = 5,
	}),
	PlaceObj('LootEntryLootDef', {
		game_conditions = {
			PlaceObj('PlayerIsInSectors', {
				Negate = true,
				Sectors = {
					"F19",
				},
			}),
		},
		loot_def = "Drop_762WP_Varied_Legion",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK47Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Legion",
	id = "PierreGuard",
	loot = "all",
	PlaceObj('LootEntryLootDef', {
		loot_def = "LegionArmor_OnlyPants_T2",
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 59,
		item = "MP5K",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied_Legion",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Knife",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_MP5Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisAssault",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"GrenadeLauncher_Galil",
		},
		weapon = "Galil",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FragGrenade",
		stack_max = 3,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_40mm_Flashbang",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_GalilMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisAssault_Elite",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		Condition = 92,
		RandomizeCondition = true,
		upgrades = {
			"GrenadeLauncher_Galil",
			"ThermalScope",
		},
		weapon = "Galil",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_40mm_Flashbang",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_GalilMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisFlanker",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 79,
		RandomizeCondition = true,
		item = "AKSU",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK74Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisFlanker_Elite",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		Condition = 97,
		RandomizeCondition = true,
		upgrades = {
			"ThermalScope",
		},
		weapon = "AKSU",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK74Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy quest",
	group = "Enemy - Adonis",
	id = "AdonisGuard",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "AK47",
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK47Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisHeavy",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		RandomizeCondition = true,
		item = "HK21",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Full_Heavy",
	}),
	PlaceObj('LootEntryLootDef', {
		amount_modifier = 2000000,
		loot_def = "Drop_762NATO_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_HK21",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisMedic",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		RandomizeCondition = true,
		item = "Bereta92",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Medkit",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "MedsDrop",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_BerettaMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisSniper",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 69,
		RandomizeCondition = true,
		item = "M24Sniper",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 76,
		RandomizeCondition = true,
		item = "ColtAnaconda",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_44cal_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_M14Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisSniper_Elite",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "_762NATO_HP",
		stack_max = 30,
		stack_min = 10,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 76,
		RandomizeCondition = true,
		item = "ColtAnaconda",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_44CAL_HP",
		stack_max = 24,
		stack_min = 12,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryUpgradedWeapon', {
		Condition = 95,
		RandomizeCondition = true,
		upgrades = {
			"ThermalScope",
		},
		weapon = "M24Sniper",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_44cal_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_M14Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisSquadLeader",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		RandomizeCondition = true,
		upgrades = {
			"ReflexSight",
			"Compensator",
		},
		weapon = "AR15",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "ConcussiveGrenade",
		stack_max = 2,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_556_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AR15Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisSquadLeader_Elite",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		RandomizeCondition = true,
		upgrades = {
			"ThermalScope",
			"Compensator",
		},
		weapon = "AR15",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "ConcussiveGrenade",
		stack_max = 2,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_556_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AR15Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisStormer",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		RandomizeCondition = true,
		item = "M41Shotgun",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		RandomizeCondition = true,
		item = "MP5",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_12gauge_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_MP5Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy adonis",
	group = "Enemy - Adonis",
	id = "AdonisStormer_Elite",
	loot = "all",
	PlaceObj('LootEntryLootDef', {
		loot_def = "AdonisArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryUpgradedWeapon', {
		Condition = 95,
		RandomizeCondition = true,
		upgrades = {
			"ThermalScope",
		},
		weapon = "M41Shotgun",
	}),
	PlaceObj('LootEntryUpgradedWeapon', {
		Condition = 97,
		RandomizeCondition = true,
		upgrades = {
			"ThermalScope",
		},
		weapon = "MP5",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_12gauge_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_MP5Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy army",
	group = "Enemy - Army",
	id = "ArmyCommander",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 58,
		RandomizeCondition = true,
		drop_chance_mod = 50,
		item = "M14SAW",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ArmyArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_M14Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy army",
	group = "Enemy - Army",
	id = "ArmyHeavy",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 67,
		RandomizeCondition = true,
		item = "FNMinimi",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ArmyArmor_Pants_Chest_Helmet_Heavy",
	}),
	PlaceObj('LootEntryLootDef', {
		amount_modifier = 2000000,
		loot_def = "Drop_556_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_FNMinimiMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy army",
	group = "Enemy - Army",
	id = "ArmyMedic",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "FirstAidKit",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 56,
		RandomizeCondition = true,
		item = "Glock18",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ArmyArmor_Pants_Chest_Helmet_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "MedsDrop",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_GlockMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy army",
	group = "Enemy - Army",
	id = "ArmyMortar",
	loot = "all",
	PlaceObj('LootEntryLootDef', {
		loot_def = "ArmyArmor_Pants_Chest_Helmet_Medium",
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 82,
		item = "MortarInventoryItem",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FNFAL",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_MortarShell_HE",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_FNFALMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy army",
	group = "Enemy - Army",
	id = "ArmyScout",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 58,
		RandomizeCondition = true,
		drop_chance_mod = 50,
		item = "MP5",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ArmyArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ArmysExplosives",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_MP5Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy army",
	group = "Enemy - Army",
	id = "ArmySniper",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 58,
		RandomizeCondition = true,
		drop_chance_mod = 50,
		item = "M24Sniper",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ArmyArmor_Pants_Body_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_M14Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy army",
	group = "Enemy - Army",
	id = "ArmySoldier",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 82,
		RandomizeCondition = true,
		item = "FNFAL",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ArmyArmor_Pants_Chest_Helmet_Medium",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ArmysExplosives",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_FNFALMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy army",
	group = "Enemy - Army",
	id = "Faucheaux",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "HeavyArmorTorso_WeavePadding",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "HeavyArmorHelmet_WeavePadding",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "HeavyArmorLeggings_WeavePadding",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"LaserDot",
			"ScopeCOG",
			"MagLarge",
			"VerticalGrip",
			"AUGCompensator_03",
			"BarrelShortImproved_AUG",
		},
		weapon = "AUG",
	}),
	PlaceObj('LootEntryLootDef', {
		amount_modifier = 2000000,
		loot_def = "Drop_556_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AugMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy army",
	group = "Enemy - Rebels",
	id = "Chimurenga",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		game_conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "PantagruelDramas",
				Vars = set({
	YoungHearts = false,
    }),
			}),
		},
		guaranteed = true,
		item = "LionRoar",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		game_conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "PantagruelDramas",
				Vars = set({
	YoungHearts = false,
    }),
			}),
		},
		loot_def = "Drop_9mm_HP",
	}),
	PlaceObj('LootEntryInventoryItem', {
		game_conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "PantagruelDramas",
				Vars = set( "YoungHearts" ),
			}),
		},
		item = "AK74",
		stack_max = 1,
		stack_min = 1,
	}),
    PlaceObj('LootEntryLootDef', {
		game_conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "PantagruelDramas",
				Vars = set( "YoungHearts" ),
			}),
		},
		loot_def = "Drop_762WP_HP",
    }),
    PlaceObj('LootEntryInventoryItem', {
		item = "HeavyArmorChestplate_CeramicPlates",
		stack_max = 1,
		stack_min = 1,
    }),
    PlaceObj('LootEntryInventoryItem', {
		item = "HeavyArmorHelmet_WeavePadding",
		stack_max = 1,
		stack_min = 1,
    }),
    PlaceObj('LootEntryInventoryItem', {
		item = "KevlarLeggings",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK74Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy rebels",
	group = "Enemy - Rebels",
	id = "RebelFlanker",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 79,
		RandomizeCondition = true,
		drop_chance_mod = 0,
		item = "Knife",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 86,
		RandomizeCondition = true,
		item = "UZI",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_9mm_HP",
		stack_max = 120,
		stack_min = 80,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "RebelsArmor_Pants_Chest_Light_Randomized",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_UZIMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy rebels",
	group = "Enemy - Rebels",
	id = "RebelGunner",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 78,
		RandomizeCondition = true,
		drop_chance_mod = 300,
		item = "RPK74",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "RebelsArmor_Pants_Chest_Light",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK74MagExpanded",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy rebels",
	group = "Enemy - Rebels",
	id = "RebelSentry",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 92,
		RandomizeCondition = true,
		item = "M14SAW",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "RebelsArmor_Pants_Chest_Light",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762NATO_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_M14Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy rebels",
	group = "Enemy - Rebels",
	id = "RebelSniper",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 89,
		RandomizeCondition = true,
		item = "DragunovSVD",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "RebelsArmor_Pants_Chest_Light_Randomized",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_SVDMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy rebels",
	group = "Enemy - Rebels",
	id = "RebelSoldier",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 93,
		RandomizeCondition = true,
		item = "AK47",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "RebelsArmor_Pants_Chest_Light_Randomized",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK47Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy thugs",
	group = "Enemy - Thugs",
	id = "ThugBoss",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 85,
		RandomizeCondition = true,
		drop_chance_mod = 0,
		item = "Knife",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 76,
		RandomizeCondition = true,
		item = "AK47",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ThugsArmor_Pants_Chest_Light",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK47Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy thugs",
	group = "Enemy - Thugs",
	id = "ThugBoss_Stronger",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 85,
		RandomizeCondition = true,
		drop_chance_mod = 0,
		item = "Knife",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 76,
		RandomizeCondition = true,
		item = "AUG",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ThugsArmor_Pants_Chest_Light",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_556_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AugMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy thugs",
	group = "Enemy - Thugs",
	id = "ThugGoon",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 77,
		RandomizeCondition = true,
		drop_chance_mod = 0,
		item = "Knife",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 75,
		RandomizeCondition = true,
		item = "UZI",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ThugsArmor_Pants_Chest_Light_Randomized",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "SmokeGrenade",
		stack_max = 2,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_44cal_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_UZIMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy thugs",
	group = "Enemy - Thugs",
	id = "ThugGoon_Stronger",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 77,
		RandomizeCondition = true,
		drop_chance_mod = 0,
		item = "Knife",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 75,
		RandomizeCondition = true,
		item = "MP5K",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ThugsArmor_Pants_Chest_Light",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "SmokeGrenade",
		stack_max = 2,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_9mm_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_MP5Mag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy thugs",
	group = "Enemy - Thugs",
	id = "ThugGunner",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 81,
		RandomizeCondition = true,
		drop_chance_mod = 0,
		item = "Knife",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 78,
		RandomizeCondition = true,
		drop_chance_mod = 300,
		item = "RPK74",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ThugsArmor_Pants_Chest_Light",
	}),
	PlaceObj('LootEntryLootDef', {
		amount_modifier = 2000000,
		loot_def = "Drop_762WP_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_AK74MagExpanded",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy thugs",
	group = "Enemy - Thugs",
	id = "ThugGunner_Stronger",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 81,
		RandomizeCondition = true,
		drop_chance_mod = 0,
		item = "Knife",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 78,
		RandomizeCondition = true,
		drop_chance_mod = 300,
		item = "FNMinimi",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ThugsArmor_Pants_Chest_Light",
	}),
	PlaceObj('LootEntryLootDef', {
		amount_modifier = 2000000,
		loot_def = "Drop_556_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_FNMinimiMag",
	}),
})
PlaceObj('ModItemLootDef', {
	Comment = "enemy thugs",
	group = "Enemy - Thugs",
	id = "ThugSniper_Stronger",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		Condition = 87,
		RandomizeCondition = true,
		drop_chance_mod = 0,
		item = "Knife",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		Condition = 61,
		RandomizeCondition = true,
		item = "DragunovSVD",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ThugsArmor_Pants_Chest_Light",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Drop_762WP_Varied",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "EnemyValuables",
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "LootDef_SVDMag",
	}),
})