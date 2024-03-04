UndefineClass('BHPMagazine')
DefineClass.BHPMagazine = {
	__parents = { "PistolMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "PistolMag",
	ScrapParts = 2,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/BHP_mag_normal",
	DisplayName = T(346509557267, --[[ModItemInventoryItemCompositeDef BHPMagazine DisplayName]] "BHP Magazine"),
	DisplayNamePlural = T(419595371394, --[[ModItemInventoryItemCompositeDef BHPMagazine DisplayNamePlural]] "BHP Magazines"),
	Description = T(778816736927, --[[ModItemInventoryItemCompositeDef BHPMagazine Description]] "Standard HiPower magazine"),
	AdditionalHint = T(788297269809, --[[ModItemInventoryItemCompositeDef BHPMagazine AdditionalHint]] "9mm"),
	Cost = 99,
	CanAppearInShop = true,
	MaxStock = 6,
	RestockWeight = 90,
	CanBeConsumed = false,
	CategoryPair = "PistolMags",
	Platform = "HiPower",
	MagazineSize = 13,
	Caliber = "9mm",
	Modification = "MagNormal",
	Type = "Pistol",
}

