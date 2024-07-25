UndefineClass('MP5MagazineLarge')
DefineClass.MP5MagazineLarge = {
	__parents = { "SmgMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "SmgMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/mp5_mag_large",
	DisplayName = T(270265120737, --[[ModItemInventoryItemCompositeDef MP5MagazineLarge DisplayName]] "MP5 Magazine"),
	DisplayNamePlural = T(997289885960, --[[ModItemInventoryItemCompositeDef MP5MagazineLarge DisplayNamePlural]] "MP5 Magazines"),
	Description = T(519441584306, --[[ModItemInventoryItemCompositeDef MP5MagazineLarge Description]] "Standard MP5 Magazine"),
	AdditionalHint = T(611728180814, --[[ModItemInventoryItemCompositeDef MP5MagazineLarge AdditionalHint]] "9mm"),
	Cost = 299,
	CanAppearInShop = true,
	Tier = 2,
	RestockWeight = 80,
	CanBeConsumed = false,
	CategoryPair = "SMGMags",
	Platform = "MP5",
	Caliber = "9mm",
	Modification = "MagLarge",
	Type = "Rifle",
	MagReloadCosts = 18000,
	MagUnloadCosts = 9000,
}

