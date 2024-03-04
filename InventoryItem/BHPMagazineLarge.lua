UndefineClass('BHPMagazineLarge')
DefineClass.BHPMagazineLarge = {
	__parents = { "PistolMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "PistolMag",
	ScrapParts = 2,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/BHP_mag_large",
	DisplayName = T(842225174706, --[[ModItemInventoryItemCompositeDef BHPMagazineLarge DisplayName]] "BHP Extended Magazine"),
	DisplayNamePlural = T(140643348672, --[[ModItemInventoryItemCompositeDef BHPMagazineLarge DisplayNamePlural]] "BHP Extended Magazines"),
	Description = T(736603968083, --[[ModItemInventoryItemCompositeDef BHPMagazineLarge Description]] "Extended HiPower magazine"),
	AdditionalHint = T(243534740691, --[[ModItemInventoryItemCompositeDef BHPMagazineLarge AdditionalHint]] "9mm"),
	Cost = 199,
	CanAppearInShop = true,
	Tier = 2,
	MaxStock = 6,
	RestockWeight = 70,
	CanBeConsumed = false,
	CategoryPair = "PistolMags",
	Platform = "HiPower",
	MagazineSize = 20,
	Caliber = "9mm",
	Modification = "MagLarge",
	Type = "Pistol",
	MagReloadCosts = 14000,
	MagUnloadCosts = 7000,
}

