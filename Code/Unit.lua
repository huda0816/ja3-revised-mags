function Unit:GetMagById(mag_id)
	local mag
	self:ForEachItemInSlot("Inventory", function(item)
		if item:IsKindOf("Mag") and item.id == mag_id then
			mag = item
		end
	end, mag)
	return mag
end

function Unit:GetReloadAP(weapon, ammo, mode)
	local ap, minap = 0, 0
	if IsKindOf(ammo, "Mag") or mode == "MagMode" then
		ap = RevisedMagConfigValues.MagBaseReloadAP

		if weapon.Tags then
			if weapon:HasTag("Bullpup") then
				ap = ap + 1
			end
		end
		return ap
	end
	minap = self:GetMaxActionPoints() - 1
	return Min(minap, RevisedMagConfigValues.NonMagReloadAP)
end

function UnitData:GetReloadAP(weapon, ammo, mode)
	local ap, minap = 0, 0
	if IsKindOf(ammo, "Mag") or mode == "MagMode" then
		ap = RevisedMagConfigValues.MagBaseReloadAP

		if weapon.Tags then
			if weapon:HasTag("Bullpup") then
				ap = ap + 1
			end
		end
		return ap
	end
	minap = self:GetMaxActionPoints() - 1
	return Min(minap, RevisedMagConfigValues.NonMagReloadAP)
end

local REV_OriginalUnitReloadAction = Unit.ReloadAction

function Unit:ReloadAction(action_id, cost_ap, args)
	if not args.reload_all and args.mode == "MagMode" then
		local mag = self:GetMagById(args.ammo_id)
		local weapon = args and args.weapon
		if type(weapon) == "number" then
			local w1, w2, wl = self:GetActiveWeapons()
			weapon = wl[weapon]
		else
			weapon = self:GetWeaponByDefIdOrDefault("Firearm", weapon, args and args.pos, args and args.item_id)
		end
		self:ReloadWeapon(weapon, mag.ammo, args and args.delayed_fx)
		return
	else
		return REV_OriginalUnitReloadAction(self, action_id, cost_ap, args)
	end
end

--unused?
function GetOwner(weapon)
	for _, unit in pairs(g_Units) do
		if weapon == unit:GetActiveWeapons() then return unit end
	end
	return false
end
