UndefineClass('GlockMagazineLarge')
DefineClass.GlockMagazineLarge = {
	__parents = { "PistolMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "PistolMag",
	ScrapParts = 2,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/glock_mag_large",
	DisplayName = T(396993697244, --[[ModItemInventoryItemCompositeDef GlockMagazineLarge DisplayName]] "Extended Glock Magazine"),
	DisplayNamePlural = T(420296576604, --[[ModItemInventoryItemCompositeDef GlockMagazineLarge DisplayNamePlural]] "Extended Glock Magazines"),
	Description = T(697240786727, --[[ModItemInventoryItemCompositeDef GlockMagazineLarge Description]] "Extended Glock magazine"),
	AdditionalHint = T(767077445666, --[[ModItemInventoryItemCompositeDef GlockMagazineLarge AdditionalHint]] "9mm"),
	Cost = 179,
	CanAppearInShop = true,
	Tier = 2,
	RestockWeight = 70,
	CanBeConsumed = false,
	CategoryPair = "PistolMags",
	Platform = "Glock",
	MagazineSize = 24,
	Caliber = "9mm",
	Modification = "MagLarge",
	Type = "Pistol",
	MagReloadCosts = 16000,
	MagUnloadCosts = 8000,
}

