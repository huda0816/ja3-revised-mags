UndefineClass('AA12Magazine')
DefineClass.AA12Magazine = {
	__parents = { "RifleMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "RifleMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "Mod/URkxyfE/magpictures/aa_12normal.png",
	DisplayName = T(920157645577, --[[ModItemInventoryItemCompositeDef AA12Magazine DisplayName]] "AA12 Magazine"),
	DisplayNamePlural = T(261274054278, --[[ModItemInventoryItemCompositeDef AA12Magazine DisplayNamePlural]] "AA12 Magazines"),
	Description = T(333799004034, --[[ModItemInventoryItemCompositeDef AA12Magazine Description]] "Standard AA12 magazine"),
	AdditionalHint = T(945449277810, --[[ModItemInventoryItemCompositeDef AA12Magazine AdditionalHint]] "12gauge"),
	Cost = 349,
	CanAppearInShop = true,
	Tier = 2,
	RestockWeight = 80,
	CanBeConsumed = false,
	CategoryPair = "OtherMags",
	Platform = "AA12",
	MagazineSize = 8,
	Caliber = "12gauge",
	Modification = "MagNormal",
	Type = "Rifle",
	MagReloadCosts = 12000,
	MagUnloadCosts = 6000,
}

