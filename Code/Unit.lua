function Unit:GetMagById(mag_id)
    local mag
    self:ForEachItemInSlot("Inventory", function(item) 
        if item:IsKindOf("Mag") and item.id == mag_id then 
            mag=item  
        end 
      end, mag) 
      return mag
end

function Unit:ReloadAction(action_id, cost_ap, args) 
	if args.reload_all then 
	  local _, _, weapons = self:GetActiveWeapons() 
	  for _, weapon in ipairs(weapons) do 
		local ammo = weapon.ammo and weapon.ammo.class 
		self:ReloadWeapon(weapon, ammo, args.reload_all) 
	  end 
	else 
		if args.mode == "MagMode" then
			local ammo = self:GetMagById(args.ammo_id)
			local weapon = args and args.weapon 
			if type(weapon) == "number" then 
                local w1, w2, wl = self:GetActiveWeapons() 
                weapon = wl[weapon] 
			else 
			    weapon = self:GetWeaponByDefIdOrDefault("Firearm", weapon, args and args.pos, args and args.item_id) 
			end 
			self:ReloadWeapon(weapon, ammo, args and args.delayed_fx) 
			return
		else
            local ammo 
            if args and args.target then 
                ammo = self:GetItem(args.target) 
            end 
            if not ammo then 
                local bag = self.Squad and GetSquadBagInventory(self.Squad) 
                if bag then 
                ammo = bag:GetItem(args.target) 
                end 
            end 
            local weapon = args and args.weapon 
            if type(weapon) == "number" then 
                local w1, w2, wl = self:GetActiveWeapons() 
                weapon = wl[weapon] 
            else 
                weapon = self:GetWeaponByDefIdOrDefault("Firearm", weapon, args and args.pos, args and args.item_id) 
            end 
            self:ReloadWeapon(weapon, ammo, args and args.delayed_fx) 
		end 
	end
  end

  function Unit:GetMagsForWeapon(weapon) 
	local mag_list = {} 
    self:ForEachItemInSlot("Inventory", function(item) 
        if IsKindOf(item, "Mag") and item.Platform==weapon.Platform and item.Caliber==weapon.Caliber and item.ammo then 
            table.insert(mag_list, item)   
        end 
      end,mag_list) 
      return mag_list 
end 