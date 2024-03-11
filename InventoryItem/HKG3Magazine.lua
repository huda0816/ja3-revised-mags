UndefineClass('HKG3Magazine')
DefineClass.HKG3Magazine = {
	__parents = { "RifleMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "RifleMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "Mod/URkxyfE/magpictures/g3_normal.png",
	DisplayName = T(851026653117, --[[ModItemInventoryItemCompositeDef HKG3Magazine DisplayName]] "PSG1 Magazine"),
	DisplayNamePlural = T(265908131581, --[[ModItemInventoryItemCompositeDef HKG3Magazine DisplayNamePlural]] "PSG1 Magazines"),
	Description = T(684199504018, --[[ModItemInventoryItemCompositeDef HKG3Magazine Description]] "PSG1 Magazin"),
	AdditionalHint = T(702883456097, --[[ModItemInventoryItemCompositeDef HKG3Magazine AdditionalHint]] "7.62mm NATO"),
	Cost = 349,
	CanAppearInShop = true,
	Tier = 2,
	RestockWeight = 80,
	CanBeConsumed = false,
	CategoryPair = "RifleMags",
	Platform = "HKG3",
	MagazineSize = 5,
	Caliber = "762NATO",
	Modification = "MagNormal",
	Type = "Rifle",
	MagReloadCosts = 8000,
	MagUnloadCosts = 4000,
}

