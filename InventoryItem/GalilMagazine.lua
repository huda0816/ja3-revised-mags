UndefineClass('GalilMagazine')
DefineClass.GalilMagazine = {
	__parents = { "RifleMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "RifleMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "Mod/URkxyfE/magpictures/galil_mag_normal.png",
	DisplayName = T(546949415062, --[[ModItemInventoryItemCompositeDef GalilMagazine DisplayName]] "Galil Magazine"),
	DisplayNamePlural = T(737487578825, --[[ModItemInventoryItemCompositeDef GalilMagazine DisplayNamePlural]] "Galil Magazines"),
	Description = T(469860253168, --[[ModItemInventoryItemCompositeDef GalilMagazine Description]] "Galil Magazine for the 7.62mm NATO"),
	AdditionalHint = T(586839273520, --[[ModItemInventoryItemCompositeDef GalilMagazine AdditionalHint]] "7.62mm NATO"),
	Cost = 449,
	CanAppearInShop = true,
	Tier = 2,
	MaxStock = 4,
	RestockWeight = 80,
	CanBeConsumed = false,
	CategoryPair = "RifleMags",
	Platform = "Galil",
	MagazineSize = 25,
	Caliber = "762NATO",
	Modification = "MagNormal",
	Type = "Rifle",
	MagReloadCosts = 20000,
	MagUnloadCosts = 10000,
}

