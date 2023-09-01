PlaceObj('CombatAction', { 
	Description = T(646737101780, --[[CombatAction Reload Description]] "<em>Reload</em> or <em>change</em> ammo."), 
	DisplayName = T(642187794904, --[[CombatAction Reload DisplayName]] "Reload"), 
	GetAPCost = function (self, unit, args) 
		if unit:HasStatusEffect("ManningEmplacement") then return -1 end 
		local weapon 
		if args and args.item_id then 
			local alt_set = (unit.current_weapon == "Handheld A") and "Handheld B" or "Handheld A" 
			weapon = FindWeaponInSlotById(unit, unit.current_weapon, args.item_id) or FindWeaponInSlotById(unit, alt_set, args.item_id) or FindWeaponInSlotById(unit, "Inventory", args.item_id) 
		end 
		 
		if not weapon then 
			if args and args.pos then 
				weapon = unit:GetItemAtPackedPos(args.pos)			 
			else 
				weapon = unit:GetWeaponByDefIdOrDefault("Firearm", args and args.weapon) 
			end 
		end	 
		return (weapon and not weapon.jammed) and unit:GetReloadAP(weapon, args.item) or -1 
	end, 
	GetActionDisplayName = function (self, units) 
		local unit = units[1] 
		if not IsKindOf(unit, "Unit") then return end 
		 
		local w1, w2, weaponList = unit:GetActiveWeapons("Firearm") 
		local canChange = false 
		for i, w in ipairs(weaponList) do 
			local ammoForWeapon = unit:GetAvailableAmmos(w, nil, "unique") 
			local noAmmo = #ammoForWeapon == 0 
			local onlyAmmoIsCurrent = w.ammo and #ammoForWeapon == 1 and ammoForWeapon[1].class == w.ammo.class 
			local fullMag = not w.ammo or w.ammo.Amount == w.MagazineSize 
			 
			canChange = canChange or (onlyAmmoIsCurrent and fullMag) 
		end 
		 
		if canChange then 
			return T(817996274899, "Change Ammo") 
		else 
			return self.DisplayName 
		end 
	end, 
	GetTargets = function (self, units) 
		local unit = units[1] 
		local weapon = unit:GetActiveWeapons() 
		return unit:GetAvailableAmmos(weapon) 
	end, 
	GetUIState = function (self, units, args) 
		if not g_Combat and #units ~= 1 then return "hidden" end 
		 
		local unit = units[1] 
		local cost = self:GetAPCost(unit, args) 
		if cost < 0 then return "hidden" end 
		if not unit:UIHasAP(cost) then return "disabled", GetUnitNoApReason(unit) end 
		local availableWeaponsToReload = 0 
		 
		local errorReason 
		local weapon 
		if args and args.pos then 
			weapon = unit:GetItemAtPackedPos(args.pos) 
		elseif args and args.weapon then 
			weapon = unit:GetWeaponByDefIdOrDefault("Firearm", args and args.weapon, args and args.pos) 
		end	 
		if weapon then 
			local weaponReloadOptions = GetReloadOptionsForWeapon(weapon, unit) 
			if #weaponReloadOptions > 0 then 
				availableWeaponsToReload = availableWeaponsToReload + 1 
			end	 
		else 
			local w1, w2, weaponList = unit:GetActiveWeapons() 
			if not weaponList then return "enabled" end 
			for i, w in ipairs(weaponList) do 
				local canReload, err = IsWeaponAvailableForReload(w, unit:GetAvailableAmmos(w, nil, "unique")) 
				errorReason = err 
				if canReload then 
					availableWeaponsToReload = availableWeaponsToReload + 1 
				end	 
			end 
		end	 
		if availableWeaponsToReload == 0 then return "disabled", errorReason end	 
		return "enabled" 
	end, 
	Icon = "UI/Icons/Hud/reload", 
	IsAimableAttack = false, 
	RequireState = "any", 
	RequireWeapon = true, 
	Run = function (self, unit, ap, ...) 
		unit:SetActionCommand("ReloadAction", self.id, ap, ...) 
	end, 
	ShowIn = false, 
	SortKey = 8, 
	UIBegin = function (self, units, args) 
		local unit = units[1] 
		local mode_dlg = GetInGameInterfaceModeDlg() 
		if IsKindOf(mode_dlg, "IModeCommonUnitControl") then 
			-- Process weapons 
			local w1, w2, weaponList = unit:GetActiveWeapons("Firearm") 
			local processedList = {} 
			for i, w in ipairs(weaponList) do 
				local text = T{535301054415, "<weaponName>", weaponName = w.DisplayName} 
				local ammoForWeapon = unit:GetAvailableAmmos(w, nil, "unique") 
				local noAmmo = #ammoForWeapon == 0 
				if w.ammo == 0 then 
					text = text .. T(642941753004, " (Empty)") 
				end 
		 
				local onlyAmmoIsCurrent = w.ammo and #ammoForWeapon == 1 and ammoForWeapon[1].class == w.ammo.class 
				local fullMag = not w.ammo or w.ammo.Amount == w.MagazineSize 
				 
				local processedAmmo = {} 
		 
				for _, a in ipairs(ammoForWeapon) do 
					local isCurrent = w.ammo and a.class == w.ammo.class 
					local ammoEntry = { 
						DisplayName = isCurrent and T{541680584484, "Current: <DisplayName>", a} or a.DisplayName, 
						ammo = a, 
						disabled = w.ammo and isCurrent and fullMag, 
						icon = a.Icon, 
						uiCtx = a, 
						rolloverTemplate = "RolloverInventory" 
					} 
					if isCurrent then table.insert(processedAmmo, 1, ammoEntry) else table.insert(processedAmmo, ammoEntry) end 
				end 
				 
				processedList[#processedList + 1] = {  
					DisplayName = text, 
					weaponIdx = i, 
					ammo = processedAmmo, 
					disabled = noAmmo or (onlyAmmoIsCurrent and fullMag), 
					icon = w.Icon, 
					uiCtx = w, 
					rolloverTemplate = "RolloverInventory" 
				} 
			end 
			 
			-- First you choose which weapon to reload, then you choose the ammo to load into it. 
			local weaponChoiceCallback = function(u, weaponWrapped) 
				local ammoChoiceCallback = function(u, ammoWrapped) 
					self:Execute({u}, { weapon = weaponWrapped.weaponIdx, target = ammoWrapped.ammo.class }) 
				end 
				mode_dlg:ShowCombatActionTargetChoice(self, {u}, weaponWrapped.ammo, ammoChoiceCallback, "suppress_toggle") 
			end 
		 
			mode_dlg:ShowCombatActionTargetChoice(self, units, processedList, weaponChoiceCallback) 
		else 
			self:Execute(units) 
		end 
	end, 
	group = "Hidden", 
	id = "Reload", 
})
