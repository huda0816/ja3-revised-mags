local REV_Original_IsReload = IsReload

function IsReload(ammo, weapon)
	if not ammo or not weapon then return false end

	local unit = REV_GetOwner(ammo.owner) or REV_GetOwner(weapon.owner)

	if unit and InventoryIsCombatMode(unit) and IsKindOf(weapon, "Weapon") and IsKindOf(ammo, "Ammo") then return false end

	if IsKindOf(weapon, "Mag") and IsKindOf(ammo, "Mag") then return false end

	if IsKindOf(weapon, "Weapon") and IsKindOf(ammo, "Mag") then return true end

	if IsKindOf(weapon, "Mag") and IsKindOf(ammo, "Ammo") then
		return REV_IsMagReloadTarget(ammo, weapon)
	end

	return REV_Original_IsReload(ammo, weapon)
end

local REV_Original_GetAPCostAndUnit = GetAPCostAndUnit

function GetAPCostAndUnit(item, src_container, src_container_slot_name, dest_container, dest_container_slot_name,
						  item_at_dest, is_reload)
	if is_reload then
		local dest_unit = dest_container
		if IsKindOf(dest_unit, "UnitData") then
			dest_unit = g_Units[dest_unit.session_id]
		end
		local inv_unit = GetInventoryUnit()
		local unit = IsKindOf(dest_unit, "Unit") and not dest_unit:IsDead() and dest_unit or
			inv_unit --user can be reloading in container, hence dest_unit can be a container
		local action = CombatActions["Reload"]
		local pos = dest_container:GetItemPackedPos(item_at_dest)

		local actionArgs
		local ammo = item
		local weapon = item_at_dest
		if IsKindOf(ammo, "Mag") then
			actionArgs = {
				target = ammo.ammo and ammo.ammo.class or nil,
				pos = pos,
				item_id = weapon.id,
				mode = "MagMode",
				ammo_id = ammo.id
			}
		elseif IsKindOf(weapon, "Mag") then
			actionArgs = {
				target = ammo.class,
				pos = pos,
				item_id = weapon.id,
				mode = "MagReloadMode",
				ammo_id = ammo.id
			}
		else
			actionArgs = {
				target = ammo.class,
				pos = pos,
				item_id = weapon.id,
				mode = "AmmoMode",
				ammo_id = ammo.id
			}
		end
		local ap = action:GetAPCost(unit, actionArgs) or 0

		local action_name = T(160472488023, "Reload")
		return ap, unit, action_name
	else
		return REV_Original_GetAPCostAndUnit(item, src_container, src_container_slot_name, dest_container,
			dest_container_slot_name, item_at_dest, is_reload)
	end
end
