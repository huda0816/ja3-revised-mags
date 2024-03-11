UndefineClass('HKG3MagazineLarge')
DefineClass.HKG3MagazineLarge = {
	__parents = { "RifleMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "RifleMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "Mod/URkxyfE/magpictures/g3_expanded.png",
	DisplayName = T(906480252330, --[[ModItemInventoryItemCompositeDef HKG3MagazineLarge DisplayName]] "HK21 Magazine"),
	DisplayNamePlural = T(254435009704, --[[ModItemInventoryItemCompositeDef HKG3MagazineLarge DisplayNamePlural]] "HK21 Magazines"),
	Description = T(565422177836, --[[ModItemInventoryItemCompositeDef HKG3MagazineLarge Description]] "HK21 magazine for 7.62 NATO round"),
	AdditionalHint = T(743853421491, --[[ModItemInventoryItemCompositeDef HKG3MagazineLarge AdditionalHint]] "7.62mm NATO"),
	Cost = 449,
	CanAppearInShop = true,
	Tier = 2,
	RestockWeight = 80,
	CanBeConsumed = false,
	CategoryPair = "RifleMags",
	Platform = "HKG3",
	MagazineSize = 20,
	Caliber = "762NATO",
	Modification = "MagLarge",
	Type = "Rifle",
	MagReloadCosts = 18000,
	MagUnloadCosts = 9000,
}

