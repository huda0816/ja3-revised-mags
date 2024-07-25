UndefineClass('DesertEagleMagazine')
DefineClass.DesertEagleMagazine = {
	__parents = { "PistolMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "PistolMag",
	ScrapParts = 2,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/deserteagle_mag_normal",
	DisplayName = T(915668483121, --[[ModItemInventoryItemCompositeDef DesertEagleMagazine DisplayName]] "Desert Eagle Magazine"),
	DisplayNamePlural = T(776313716592, --[[ModItemInventoryItemCompositeDef DesertEagleMagazine DisplayNamePlural]] "Desert Eagle Magazines"),
	Description = T(610426682203, --[[ModItemInventoryItemCompositeDef DesertEagleMagazine Description]] "Standard Desert Eagle Magazine"),
	AdditionalHint = T(860923252701, --[[ModItemInventoryItemCompositeDef DesertEagleMagazine AdditionalHint]] ".44 Magnum"),
	Cost = 89,
	CanAppearInShop = true,
	MaxStock = 6,
	RestockWeight = 90,
	CanBeConsumed = false,
	CategoryPair = "PistolMags",
	Platform = "DesertEagle",
	MagazineSize = 8,
	Caliber = "44CAL",
	Modification = "MagNormal",
	Type = "Pistol",
	MagReloadCosts = 8000,
	MagUnloadCosts = 4000,
}

