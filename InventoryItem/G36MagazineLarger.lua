UndefineClass('G36MagazineLarger')
DefineClass.G36MagazineLarger = {
	__parents = { "LargeMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "LargeMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/expanded_drum_G36_magazine",
	DisplayName = T(421339476130, --[[ModItemInventoryItemCompositeDef G36MagazineLarger DisplayName]] "G36 Drum Magazine"),
	DisplayNamePlural = T(255695106893, --[[ModItemInventoryItemCompositeDef G36MagazineLarger DisplayNamePlural]] "G36 Drum Magazines"),
	Description = T(956629558068, --[[ModItemInventoryItemCompositeDef G36MagazineLarger Description]] "Drum Magazine for G36"),
	AdditionalHint = T(134197212893, --[[ModItemInventoryItemCompositeDef G36MagazineLarger AdditionalHint]] "5.56mm"),
	Cost = 799,
	CanAppearInShop = true,
	Tier = 2,
	RestockWeight = 60,
	CanBeConsumed = false,
	CategoryPair = "MGMags",
	Platform = "G36",
	MagazineSize = 100,
	Caliber = "556",
	Modification = "MagLarger",
	Type = "Large",
	ExtraAPCosts = 2000,
	MagReloadCosts = 50000,
}

