return PlaceObj('ModDef', {
	'title', "Revised Mags",
	'description', "This is a separate module of the Revised project that introduces magazines into the JA3 game.\nSimilar to how it worked in JA2 game.\n\n[b]Mechanics[/b]\n[list]\n	[*]Each weapon platform has a correspnding magazine (i.e. MP5, STANAG etc)\n	[*]Weapon can be reloaded with magazines or ammo. Reloading with magazines requires less AP.\n    [*]Enemies drop ammo and weapon magazines\n\n[b]UI QoL updates[/b]\n[list]\n	[*]Now you can use quick reload button to change ammo\n	[*]You can reload mags using quick reload button or context menu\n\n\nIt should work with any vanilla save.\n\nIt might not with modd that add new types of items and change the UI of the inventory. But otherwise should be pretty compatibale.\n\nThe APs required to reload the weapon can be configured in mod options.",
	'image', "Mod/URkxyfE/Images/JA3Revised-Mags.png",
	'last_changes', "fiiix",
	'id', "URkxyfE",
	'author', "Ablomis",
	'version', 756,
	'lua_revision', 233360,
	'saved_with_revision', 340446,
	'code', {
		"Code/Actions.lua",
		"Code/AddPlatformToWeapons.lua",
		"Code/Config.lua",
		"Code/ContextSubMenu.lua",
		"Code/HighlightWeaponsForMags.lua",
		"Code/InventoryContextMenu.lua",
		"Code/Inventory_MoveItem.lua",
		"Code/LootDrop.lua",
		"Code/MagReload.lua",
		"Code/MagsItemDefinition.lua",
		"Code/MagsItems.lua",
		"Code/MagsUI.lua",
		"Code/ModOptions.lua",
		"Code/RealCalibers.lua",
		"Code/RepairFix.lua",
		"Code/UI.lua",
		"Code/UIWeaponDisplay.lua",
		"Code/Unit.lua",
	},
	'has_options', true,
	'saved', 1694048524,
	'code_hash', 1091387130537503820,
	'screenshot1', "Mod/URkxyfE/Images/20230822083437_1.jpg",
	'screenshot2', "Mod/URkxyfE/Images/20230826121958_1.jpg",
	'screenshot3', "Mod/URkxyfE/Images/20230826183515_1.jpg",
	'screenshot4', "Mod/URkxyfE/Images/20230826185306_1.jpg",
	'steam_id', "3023941769",
	'TagWeapons&Items', true,
	'TagUI', true,
})