UndefineClass('AK47MagazineMagLarger')
DefineClass.AK47MagazineMagLarger = {
	__parents = { "LargeMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "LargeMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/RPK74_drum_magazine",
	DisplayName = T(288540638613, --[[ModItemInventoryItemCompositeDef AK47MagazineMagLarger DisplayName]] "RPK Drum Magazine"),
	DisplayNamePlural = T(491809893307, --[[ModItemInventoryItemCompositeDef AK47MagazineMagLarger DisplayNamePlural]] "RPK Drum Magazines"),
	Description = T(623103865336, --[[ModItemInventoryItemCompositeDef AK47MagazineMagLarger Description]] "RPK Drum Magazine"),
	AdditionalHint = T(843188582960, --[[ModItemInventoryItemCompositeDef AK47MagazineMagLarger AdditionalHint]] "7.62mm"),
	Cost = 499,
	CanAppearInShop = true,
	Tier = 2,
	RestockWeight = 70,
	CanBeConsumed = false,
	CategoryPair = "MGMags",
	Platform = "AK762",
	MagazineSize = 100,
	Caliber = "762WP",
	Modification = "MagLarger",
	Type = "Rifle",
	ExtraAPCosts = 2000,
	MagReloadCosts = 50000,
}

