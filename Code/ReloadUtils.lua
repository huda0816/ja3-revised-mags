GameVar("g_StoredMags", {})

function REV_GetReloadAP(unit, weapon, ammo, mode)
	if weapon and not IsKindOf(weapon, "Mag") and not weapon.Magazine then
		return weapon.ReloadAP
	end

	if not weapon or not ammo then
		return 0
	end

	local combat_mode = g_Units[unit.session_id] and InventoryIsCombatMode(g_Units[unit.session_id])

	unit = (not gv_SatelliteView or combat_mode) and g_Units[unit.session_id] or gv_UnitData[unit.session_id]

	if IsKindOf(ammo, "Mag") or mode == "MagMode" then
		return weapon.ReloadAP + ammo.ExtraAPCosts
	end

	if not IsKindOf(weapon, "Mag") then
		weapon = weapon.magazine
	end

	-- todo differentiate between drag and context menu

	return REV_GetMagReloadCosts(unit, weapon, ammo)
end

function REV_GetOwner(sessionId)
	local combat_mode = g_Units[sessionId] and InventoryIsCombatMode(g_Units[sessionId])

	return (not gv_SatelliteView or combat_mode) and g_Units[sessionId] or gv_UnitData[sessionId]
end

function REV_GetSubMenuReloadOptions(context)
	local options = GetReloadOptionsForWeapon(context.item, context.unit, "skipSubWeapon", true)
	return context.action == "reload" and options or {}
end

function REVMags_IsMerc(o)
	local id
	if IsKindOf(o, "Unit") then
		id = o.unitdatadef_id
	elseif IsKindOf(o, "UnitData") then
		id = o.class
	end

	if gv_UnitData[o.session_id] and gv_UnitData[o.session_id].Squad then
		local squad = gv_Squads[gv_UnitData[o.session_id].Squad]
		if squad.militia and (squad.Side == "player1" or squad.Side == "player2") then
			return true
		end
	end

	if IsKindOf(o, "UnitDataCompositeDef") then
		return o.IsMercenary
	end
	return id and UnitDataDefs[id].IsMercenary
end
