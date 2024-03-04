UndefineClass('MP5Magazine')
DefineClass.MP5Magazine = {
	__parents = { "SmgMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "SmgMag",
	ScrapParts = 2,
	Repairable = false,
	Icon = "UI/Icons/Upgrades/mp5_mag_normal",
	DisplayName = T(380067518258, --[[ModItemInventoryItemCompositeDef MP5Magazine DisplayName]] "Small MP5 Magazine"),
	DisplayNamePlural = T(855060268788, --[[ModItemInventoryItemCompositeDef MP5Magazine DisplayNamePlural]] "Small MP5 Magazines"),
	Description = T(183827799514, --[[ModItemInventoryItemCompositeDef MP5Magazine Description]] "Small MP5 Magazine"),
	AdditionalHint = T(934759206980, --[[ModItemInventoryItemCompositeDef MP5Magazine AdditionalHint]] "9mm"),
	Cost = 249,
	CanAppearInShop = true,
	MaxStock = 4,
	RestockWeight = 90,
	CanBeConsumed = false,
	CategoryPair = "SMGMags",
	Platform = "MP5",
	MagazineSize = 15,
	Caliber = "9mm",
	Modification = "MagNormal",
	Type = "Pistol",
}

