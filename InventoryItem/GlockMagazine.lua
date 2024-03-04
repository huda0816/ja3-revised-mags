UndefineClass('GlockMagazine')
DefineClass.GlockMagazine = {
	__parents = { "PistolMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "PistolMag",
	ScrapParts = 2,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/glock_mag_normal",
	DisplayName = T(626992530087, --[[ModItemInventoryItemCompositeDef GlockMagazine DisplayName]] "Glock Magazine"),
	DisplayNamePlural = T(248787786056, --[[ModItemInventoryItemCompositeDef GlockMagazine DisplayNamePlural]] "Glock Magazines"),
	Description = T(238763143918, --[[ModItemInventoryItemCompositeDef GlockMagazine Description]] "Standard Glock magazine"),
	AdditionalHint = T(193087859533, --[[ModItemInventoryItemCompositeDef GlockMagazine AdditionalHint]] "9mm"),
	Cost = 99,
	CanAppearInShop = true,
	MaxStock = 6,
	RestockWeight = 90,
	CanBeConsumed = false,
	CategoryPair = "PistolMags",
	Platform = "Glock",
	MagazineSize = 15,
	Caliber = "9mm",
	Modification = "MagNormal",
	Type = "Pistol",
}

