UndefineClass('AA12MagazineLarge')
DefineClass.AA12MagazineLarge = {
	__parents = { "LargeMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "LargeMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/aa12_mag_drum",
	DisplayName = T(372895830190, --[[ModItemInventoryItemCompositeDef AA12MagazineLarge DisplayName]] "AA12 Drum Magazine"),
	DisplayNamePlural = T(281581449031, --[[ModItemInventoryItemCompositeDef AA12MagazineLarge DisplayNamePlural]] "AA12 Drum Magazines"),
	Description = T(528516420382, --[[ModItemInventoryItemCompositeDef AA12MagazineLarge Description]] "Drum AA12 magazine"),
	AdditionalHint = T(946631619926, --[[ModItemInventoryItemCompositeDef AA12MagazineLarge AdditionalHint]] "12gauge"),
	Cost = 599,
	CanAppearInShop = true,
	Tier = 2,
	RestockWeight = 60,
	CanBeConsumed = false,
	CategoryPair = "OtherMags",
	Platform = "AA12",
	MagazineSize = 20,
	Caliber = "12gauge",
	Modification = "MagLarge",
	Type = "Large",
	MagReloadCosts = 20000,
	MagUnloadCosts = 10000,
}

