UndefineClass('UZIMagazine')
DefineClass.UZIMagazine = {
	__parents = { "SmgMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "SmgMag",
	ScrapParts = 2,
	Repairable = false,
	Icon = "Mod/URkxyfE/magpictures/uzi_mag_normal.png",
	DisplayName = T(366742892294, --[[ModItemInventoryItemCompositeDef UZIMagazine DisplayName]] "UZI Magazine"),
	DisplayNamePlural = T(113647653707, --[[ModItemInventoryItemCompositeDef UZIMagazine DisplayNamePlural]] "UZI Magazines"),
	Description = T(858187468628, --[[ModItemInventoryItemCompositeDef UZIMagazine Description]] "UZI magazine for 9mm rounds"),
	AdditionalHint = T(915101743767, --[[ModItemInventoryItemCompositeDef UZIMagazine AdditionalHint]] "9mm"),
	Cost = 299,
	CanAppearInShop = true,
	MaxStock = 6,
	RestockWeight = 90,
	CanBeConsumed = false,
	CategoryPair = "SMGMags",
	Platform = "UZI",
	MagazineSize = 25,
	Caliber = "9mm",
	Modification = "MagNormal",
	Type = "Pistol",
	MagReloadCosts = 16000,
	MagUnloadCosts = 8000,
}

