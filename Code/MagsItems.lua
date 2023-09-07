UndefineClass('STANAGMagazine')
DefineClass.STANAGMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",

	Group = "Default",
	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/m16_magazine",
	DisplayName = T(282185980379, --[[ModItemInventoryItemCompositeDef STANAGMagazine DisplayName]] "STANAG Magazine"),
	DisplayNamePlural = T(946216895710, --[[ModItemInventoryItemCompositeDef STANAGMagazine DisplayNamePlural]] "STANAG Magazines"),
	Description = T(882798192365, --[[ModItemInventoryItemCompositeDef STANAGMagazine Description]] "Standard STANAG Magazine for 5.56 round"),
	AdditionalHint = T(718770264521, --[[ModItemInventoryItemCompositeDef STANAGMagazine AdditionalHint]] "5.56mm"),
	Caliber = "556",
	Type = "Rifle"
}

UndefineClass('SVDMagazine')
DefineClass.SVDMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/dragunov_mag_normal",
	DisplayName = T(173974236773, --[[ModItemInventoryItemCompositeDef SVDMagazine DisplayName]] "SVD Magazine"),
	DisplayNamePlural = T(117908696950, --[[ModItemInventoryItemCompositeDef SVDMagazine DisplayNamePlural]] "SVD Magazines"),
	Description = T(112689109397, --[[ModItemInventoryItemCompositeDef SVDMagazine Description]] "Standard SVD magazine for 7.62WP round"),
	AdditionalHint = T(222479003637, --[[ModItemInventoryItemCompositeDef SVDMagazine AdditionalHint]] "7.62mm WP"),
	Platform = "SVD",
	MagazineSize = 10,
	Caliber = "762WP",
	Type = "Rifle"
}

UndefineClass('UZIMagazine')
DefineClass.UZIMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/uzi_mag_large",
	DisplayName = T(909636386983, --[[ModItemInventoryItemCompositeDef UZIMagazine DisplayName]] "UZI Magazine"),
	DisplayNamePlural = T(869217409742, --[[ModItemInventoryItemCompositeDef UZIMagazine DisplayNamePlural]] "UZI Magazines"),
	Description = T(466879348755, --[[ModItemInventoryItemCompositeDef UZIMagazine Description]] "Standard UZI magazine for 9mm round"),
	AdditionalHint = T(126723183782, --[[ModItemInventoryItemCompositeDef UZIMagazine AdditionalHint]] "9mm"),
	Platform = "UZI",
	MagazineSize = 25,
	Caliber = "9mm",
	Type = "Pistol"
}

UndefineClass('MP40Magazine')
DefineClass.MP40Magazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/expanded_MP40_magazine",
	DisplayName = T(815502052468, --[[ModItemInventoryItemCompositeDef MP40Magazine DisplayName]] "MP40 Magazine"),
	DisplayNamePlural = T(127318166348, --[[ModItemInventoryItemCompositeDef MP40Magazine DisplayNamePlural]] "MP40 Magazines"),
	Description = T(212180068231, --[[ModItemInventoryItemCompositeDef MP40Magazine Description]] "Standard MP40 magazine for 9mm round"),
	AdditionalHint = T(356325591863, --[[ModItemInventoryItemCompositeDef MP40Magazine AdditionalHint]] "9mm"),
	Platform = "MP40",
	MagazineSize = 40,
	Caliber = "9mm",
	Type = "Pistol"
}

UndefineClass('MP5MagazineNormal')
DefineClass.MP5MagazineNormal = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/mp5_mag_normal",
	DisplayName = T(732402780727, --[[ModItemInventoryItemCompositeDef MP5MagazineNormal DisplayName]] "MP5 Magazine"),
	DisplayNamePlural = T(382398901561, --[[ModItemInventoryItemCompositeDef MP5MagazineNormal DisplayNamePlural]] "MP5 Magazines"),
	Description = T(172740489376, --[[ModItemInventoryItemCompositeDef MP5MagazineNormal Description]] "Standard MP5 Magazine"),
	AdditionalHint = T(309334452652, --[[ModItemInventoryItemCompositeDef MP5MagazineNormal AdditionalHint]] "9mm"),
	Platform = "MP5",
	Caliber = "9mm",
	Type = "Rifle"
}

UndefineClass('M14Magazine')
DefineClass.M14Magazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/M14_magazine",
	DisplayName = T(508943656298, --[[ModItemInventoryItemCompositeDef M14Magazine DisplayName]] "M14 Magazine"),
	DisplayNamePlural = T(963071919036, --[[ModItemInventoryItemCompositeDef M14Magazine DisplayNamePlural]] "M14 Magazines"),
	Description = T(622519483107, --[[ModItemInventoryItemCompositeDef M14Magazine Description]] "Magazine for the 7.62mm NATO round that works with M14 and M24 rifles"),
	AdditionalHint = T(545760852310, --[[ModItemInventoryItemCompositeDef M14Magazine AdditionalHint]] "7.62mm NATO"),
	Platform = "M14",
	MagazineSize = 20,
	Caliber = "762NATO",
	Type = "Rifle"
}

UndefineClass('HK21Magazine')
DefineClass.HK21Magazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/hk21_mag_large",
	DisplayName = T(590544295805, --[[ModItemInventoryItemCompositeDef HK21Magazine DisplayName]] "HK21 Magazine"),
	DisplayNamePlural = T(218931367318, --[[ModItemInventoryItemCompositeDef HK21Magazine DisplayNamePlural]] "HK21 Magazines"),
	Description = T(567376194311, --[[ModItemInventoryItemCompositeDef HK21Magazine Description]] "Standard HK21 magazine for 7.62 NATO round"),
	AdditionalHint = T(459309793514, --[[ModItemInventoryItemCompositeDef HK21Magazine AdditionalHint]] "7.62mm NATO"),
	Platform = "HK21",
	MagazineSize = 120,
	Caliber = "762NATO",
	Type = "Large"
}

UndefineClass('GlockMagazine')
DefineClass.GlockMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/glock_mag_normal",
	DisplayName = T(298958662341, --[[ModItemInventoryItemCompositeDef GlockMagazine DisplayName]] "Glock Magazine"),
	DisplayNamePlural = T(633928395596, --[[ModItemInventoryItemCompositeDef GlockMagazine DisplayNamePlural]] "Glock Magazines"),
	Description = T(608989194190, --[[ModItemInventoryItemCompositeDef GlockMagazine Description]] "Standard Glock magazine"),
	AdditionalHint = T(254672199793, --[[ModItemInventoryItemCompositeDef GlockMagazine AdditionalHint]] "9mm"),
	Platform = "Glock",
	MagazineSize = 15,
	Caliber = "9mm",
	Type = "Pistol"

}

UndefineClass('GalilMagazine')
DefineClass.GalilMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/galil_magazine_large",
	DisplayName = T(314083812470, --[[ModItemInventoryItemCompositeDef GalilMagazine DisplayName]] "Galil Magazine"),
	DisplayNamePlural = T(698944775348, --[[ModItemInventoryItemCompositeDef GalilMagazine DisplayNamePlural]] "Galil Magazines"),
	Description = T(533316604710, --[[ModItemInventoryItemCompositeDef GalilMagazine Description]] "Standard Galil Magazine for the 7.62mm NATO"),
	AdditionalHint = T(760453604578, --[[ModItemInventoryItemCompositeDef GalilMagazine AdditionalHint]] "7.62mm NATO"),
	Platform = "Galil",
	Caliber = "762NATO",
}

UndefineClass('FNMinimiMagazine')
DefineClass.FNMinimiMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/fnminimi_mag_large",
	DisplayName = T(462210304407, --[[ModItemInventoryItemCompositeDef FNMinimiMagazine DisplayName]] "FNMinimi Magazine"),
	DisplayNamePlural = T(543615262818, --[[ModItemInventoryItemCompositeDef FNMinimiMagazine DisplayNamePlural]] "FNMinimi Magazines"),
	Description = T(881726331169, --[[ModItemInventoryItemCompositeDef FNMinimiMagazine Description]] "Standard FNMinimi magazine for 5.56 round"),
	AdditionalHint = T(596661360728, --[[ModItemInventoryItemCompositeDef FNMinimiMagazine AdditionalHint]] "5.56mm"),
	Platform = "SAW",
	MagazineSize = 100,
	Caliber = "556",
	Type = "Large"
}

UndefineClass('FNFALMagazine')
DefineClass.FNFALMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/fnfal_mag_ergo_normal",
	DisplayName = T(382063710041, --[[ModItemInventoryItemCompositeDef FNFALMagazine DisplayName]] "FNFAL Magazine"),
	DisplayNamePlural = T(787406000122, --[[ModItemInventoryItemCompositeDef FNFALMagazine DisplayNamePlural]] "FNFAL Magazines"),
	Description = T(100358965363, --[[ModItemInventoryItemCompositeDef FNFALMagazine Description]] "Standard FNFAL Magazine for the 7.62mm round"),
	AdditionalHint = T(419905316654, --[[ModItemInventoryItemCompositeDef FNFALMagazine AdditionalHint]] "7.62mm NATO"),
	Platform = "FNFAL",
	Caliber = "556",
	Type = "Rifle"
}

UndefineClass('FAMASMagazine')
DefineClass.FAMASMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/expanded_M14_magazine",
	DisplayName = T(597194724511, --[[ModItemInventoryItemCompositeDef FAMASMagazine DisplayName]] "FAMAS Magazine"),
	DisplayNamePlural = T(174007795617, --[[ModItemInventoryItemCompositeDef FAMASMagazine DisplayNamePlural]] "FAMAS Magazines"),
	Description = T(452657982702, --[[ModItemInventoryItemCompositeDef FAMASMagazine Description]] "Standard FAMAS Magazine for the 5.56mm round"),
	AdditionalHint = T(795168039398, --[[ModItemInventoryItemCompositeDef FAMASMagazine AdditionalHint]] "5.56mm"),
	Platform = "FAMAS",
	MagazineSize = 25,
	Caliber = "556",
	Type = "Rifle"
}

UndefineClass('BHPMagazine')
DefineClass.BHPMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",

	Group = "Default",
	object_class = "Mag",
	Repairable = true,
	Icon = "UI/Icons/Upgrades/BHP_mag_normal",
	DisplayName ="BHP Magazine",
	DisplayNamePlural ="BHP Magazines",
	Description = "Standard HiPower magazine",
	AdditionalHint = "9mm",
	Platform = "HiPower",
	MagazineSize = 15,
	Caliber = "9mm",
	Type = "Pistol"
}

UndefineClass('BerettaMagazine')
DefineClass.BerettaMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/beretta_mag_normal",
	DisplayName = T(389987876790, --[[ModItemInventoryItemCompositeDef BerettaMagazine DisplayName]] "Beretta Magazine"),
	DisplayNamePlural = T(246895408990, --[[ModItemInventoryItemCompositeDef BerettaMagazine DisplayNamePlural]] "Beretta Magazines"),
	Description = T(315749416523, --[[ModItemInventoryItemCompositeDef BerettaMagazine Description]] "Standard Beretta magazine"),
	AdditionalHint = T(367197419611, --[[ModItemInventoryItemCompositeDef BerettaMagazine AdditionalHint]] "9mm"),
	Platform = "Beretta",
	MagazineSize = 15,
	Caliber = "9mm",
	Type = "Pistol"
}

UndefineClass('AUGMagazine')
DefineClass.AUGMagazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/steyr_AUG_magazine",
	DisplayName = T(688055476615, --[[ModItemInventoryItemCompositeDef AUGMagazine DisplayName]] "AUG Magazine"),
	DisplayNamePlural = T(692338428511, --[[ModItemInventoryItemCompositeDef AUGMagazine DisplayNamePlural]] "AUG Magazines"),
	Description = T(647018240078, --[[ModItemInventoryItemCompositeDef AUGMagazine Description]] "Standard AUG Magazine"),
	AdditionalHint = T(239258927441, --[[ModItemInventoryItemCompositeDef AUGMagazine AdditionalHint]] "5.56mm"),
	Platform = "AUG",
	Caliber = "556",
	Type = "Rifle"
}

UndefineClass('AR15Magazine')
DefineClass.AR15Magazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/ar15_mag_ergo_normal",
	DisplayName = T(865892569410, --[[ModItemInventoryItemCompositeDef AR15Magazine DisplayName]] "AR15 Magazine"),
	DisplayNamePlural = T(536879903852, --[[ModItemInventoryItemCompositeDef AR15Magazine DisplayNamePlural]] "AR15 Magazines"),
	Description = T(928004967110, --[[ModItemInventoryItemCompositeDef AR15Magazine Description]] "Ergonomic AR15 magazine for the 5.56mm round"),
	AdditionalHint = T(959392753542, --[[ModItemInventoryItemCompositeDef AR15Magazine AdditionalHint]] "5.56mm"),
	Caliber = "556",
	Type = "Rifle"
}

UndefineClass('AK74MagazineExpanded')
DefineClass.AK74MagazineExpanded = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/expanded_AK74_bakelite_magazine",
	DisplayName = T(808118696036, --[[ModItemInventoryItemCompositeDef AK74MagazineExpanded DisplayName]] "AK74 Expanded Magazine"),
	DisplayNamePlural = T(141099000049, --[[ModItemInventoryItemCompositeDef AK74MagazineExpanded DisplayNamePlural]] "AK74 Expanded Magazines"),
	Description = T(613116081450, --[[ModItemInventoryItemCompositeDef AK74MagazineExpanded Description]] "Expanded AK 74 Magazine for 5.45 round"),
	AdditionalHint = T(702221910455, --[[ModItemInventoryItemCompositeDef AK74MagazineExpanded AdditionalHint]] "5.45mm"),
	Platform = "AK762",
	MagazineSize = 60,
	Caliber = "762WP",
	Type = "Rifle"
}

UndefineClass('AK74Magazine')
DefineClass.AK74Magazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Mag",
	Repairable = false,
	Icon = "UI/Icons/Upgrades/AK74_Bakelite_magazine",
	DisplayName = T(647191851052, --[[ModItemInventoryItemCompositeDef AK74Magazine DisplayName]] "AK74 Magazine"),
	DisplayNamePlural = T(101786234530, --[[ModItemInventoryItemCompositeDef AK74Magazine DisplayNamePlural]] "AK74 Magazines"),
	Description = T(684862329970, --[[ModItemInventoryItemCompositeDef AK74Magazine Description]] "Standard AK 74 Magazine for 5.45 round"),
	AdditionalHint = T(151151449042, --[[ModItemInventoryItemCompositeDef AK74Magazine AdditionalHint]] "5.45mm"),
	Platform = "AK762",
	Caliber = "762WP",
	Type = "Rifle"
}

UndefineClass('AK47Magazine')
DefineClass.AK47Magazine = {
	__parents = { "Mag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",

	Group = "Default",
	object_class = "Mag",
	Repairable = true,
	Icon = "UI/Icons/Upgrades/AK47_magazine",
	DisplayName = "AK47 Magazine",
	DisplayNamePlural ="AK47 Magazines",
	Description = "Standard AK 47 Magazine for 7.62 round",
	AdditionalHint = "7.62mm",
	Platform = "AK762",
	Caliber = "762WP",
	Type = "Rifle"
}
