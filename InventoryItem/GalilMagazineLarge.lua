UndefineClass('GalilMagazineLarge')
DefineClass.GalilMagazineLarge = {
	__parents = { "RifleMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "RifleMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/galil_magazine_large",
	DisplayName = T(155161482218, --[[ModItemInventoryItemCompositeDef GalilMagazineLarge DisplayName]] "Extended Galil Magazine"),
	DisplayNamePlural = T(758170231146, --[[ModItemInventoryItemCompositeDef GalilMagazineLarge DisplayNamePlural]] "Extended Galil Magazines"),
	Description = T(580123573901, --[[ModItemInventoryItemCompositeDef GalilMagazineLarge Description]] "Extended Galil Magazine"),
	AdditionalHint = T(392948848099, --[[ModItemInventoryItemCompositeDef GalilMagazineLarge AdditionalHint]] "7.62mm NATO"),
	Cost = 549,
	CanAppearInShop = true,
	Tier = 2,
	RestockWeight = 60,
	CanBeConsumed = false,
	CategoryPair = "RifleMags",
	Platform = "Galil",
	MagazineSize = 40,
	Caliber = "762NATO",
	Modification = "MagLarge",
	Type = "Rifle",
	MagReloadCosts = 28000,
	MagUnloadCosts = 14000,
}

