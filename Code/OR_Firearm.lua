local REV_OriginalGetSpecialScrapItems = FirearmBase.GetSpecialScrapItems

function FirearmBase:GetSpecialScrapItems()
	if self.Magazine then
		local unit

		if self.owner then
			unit = REV_GetOwner(self.owner)
		end

		local container = unit

		local magazine = self.magazine or PlaceInventoryItem(self.Magazine)

		if not container or not container:AddItem("Inventory", magazine) then
			if gv_SatelliteView and gv_SectorInventory then
				container = gv_SectorInventory
			else
				container = PlaceObject("ItemDropContainer")
				local drop_pos = terrain.FindPassable(container, 0, const.SlabSizeX / 2)
				container:SetPos(drop_pos or unit and unit:GetPos())
				container:SetAngle(container:Random(21600))
			end

			container:AddItem("Inventory", magazine)
		end
	end

	return REV_OriginalGetSpecialScrapItems(self)
end

local REV_Original_FirearmReload = Firearm.Reload

function Firearm:Reload(mag, suspend_fx, delayed_fx)
	if IsKindOf(mag, "Mag") then
		local owner = mag.owner and REV_GetOwner(mag.owner) or (gv_SectorInventory.sector_id and GetSectorInventory(gv_SectorInventory.sector_id)) or GetSectorInventory(gv_CurrentSectorId)

		if not owner then
			return false, false, false
		end

		-- local prev_ammo = self.ammo
		local change
		local prev_ammo = self.ammo
		local prev_mag = self.magazine
		prev_mag.ammo = prev_ammo
		local modification = mag.Modification or "MagNormal"

		self.ammo = mag.ammo
		self.magazine = mag

		self:SetWeaponComponent("Magazine", modification)

		self:RemoveModifiers("ammo")
		if (self.ammo) then
			for _, mod in ipairs(self.ammo.Modifications) do
				self:AddModifier("ammo", mod.target_prop, mod.mod_mul, mod.mod_add)
			end
		end

		local left, top = owner:GetItemPos(mag)

		owner:RemoveItem("Inventory", mag)
		owner:AddItem("Inventory", prev_mag, left, top)

		Msg("InventoryChange", owner)
		ObjModified(self)
		ObjModified(owner)
		ObjModified(mag)
		ObjModified(prev_mag)
		return false, false, change
	else
		return REV_Original_FirearmReload(self, mag, suspend_fx, delayed_fx)
	end
end

function Firearm:SetMagazineComponents(id, is_init)
	local slot = "Magazine"
	local def = WeaponComponents[id]

	self:UnregisterReactions()

	-- Remove old component
	if (self.components[slot] or "") ~= "" then
		local component = self.components[slot]
		local componentPreset = WeaponComponents[component]
		self:RemoveModifiers(component)
		if componentPreset then
			for i, v in ipairs(componentPreset.Visuals) do
				if v:Match(self.class) then
					local slotId = v.Slot
					local componentSlot = table.find_value(self.ComponentSlots, "SlotType", slotId)
					self.components[slotId] = componentSlot and componentSlot.DefaultComponent or ""
				end
			end
		end
	end

	self.components[slot] = id or ""
	self:RegisterReactions()
	self.visual_obj_dirty = true

	-- Attach new component if any
	if def then
		local magazine = self.magazine

		if not magazine then
			local magazineId = g_Classes[self.class].Magazine

			magazine = g_Classes[magazineId]
		end

		if magazine then
			self:AddModifier(id, "MagazineSize", 1000, magazine.MagazineSize)
		end
	end

	self:UpdateVisualObj()

	ObjModified(self)
end

local REV_Original_FirearmBaseSetWeaponComponent = FirearmBase.SetWeaponComponent

function FirearmBase:SetWeaponComponent(slot, id, is_init)
	if slot == "Magazine" then
		if self.components.Magazine then
			print(self.components.Magazine)
		end
		self:SetMagazineComponents(id, is_init)
	else
		REV_Original_FirearmBaseSetWeaponComponent(self, slot, id, is_init)
	end
end

function Firearm:SaveToLuaCode(indent, pStr, GetPropFunc, pos)
	if not pStr then
		local additional
		if self.ammo then
			local ammo_props = self.ammo:SavePropsToLuaCode(indent, GetPropFunc)
			ammo_props = ammo_props or "nil"
			additional = string.format("\n\t 'ammo',PlaceInventoryItem('%s', %s)", self.ammo.class, ammo_props)
		end
		if self.magazine then
			local magazine_props = self.magazine:SavePropsToLuaCode(indent, GetPropFunc)
			magazine_props = magazine_props or "nil"
			additional = string.format("%s\n\t 'magazine',PlaceInventoryItem('%s', %s)", additional or "",
				self.magazine.class, magazine_props)
		end
		if next(self.subweapons) ~= nil then
			if additional then additional = string.format("%s,", additional) end
			additional = string.format("%s\n\t 'subweapons',{", additional or "")
			local additionalWeps = {}
			for slot, item in sorted_pairs(self.subweapons) do
				additionalWeps[#additionalWeps + 1] = string.format("\n\t\t['%s'] = %s", slot,
					item:__toluacode("\t\t\t", nil, GetPropFunc))
			end
			additional = string.format("%s%s%s", additional, table.concat(additionalWeps, ", "), "\n\t},")
		end
		local props = self:SavePropsToLuaCode(indent, GetPropFunc, pStr, additional)
		props = props or "nil"
		if pos then
			return string.format("%d, PlaceInventoryItem('%s', %s)", pos, self.class, props);
		else
			return string.format("PlaceInventoryItem('%s', %s)", self.class, props);
		end
	else
		local additional = pstr("", 1024)
		if self.ammo then
			additional:appendf("\n\t 'ammo',PlaceInventoryItem('%s', ", self.ammo.class)
			if not self.ammo:SavePropsToLuaCode(indent, GetPropFunc, additional) then
				additional:append("nil")
			end
			additional:append("),")
		end

		if self.magazine then
			additional:appendf("\n\t 'magazine',PlaceInventoryItem('%s', ", self.magazine.class)
			if not self.magazine:SavePropsToLuaCode(indent, GetPropFunc, additional) then
				additional:append("nil")
			end
			additional:append("),")
		end

		if next(self.subweapons) ~= nil then
			additional:append("\n\t 'subweapons',{")
			for slot, item in sorted_pairs(self.subweapons) do
				additional:appendf("\n\t\t['%s'] = %s", slot, item:__toluacode("\t\t\t", nil, GetPropFunc))
			end
			additional:append("\n\t},")
		end

		if pos then
			pStr:append(tostring(pos) .. ", ")
			pStr:appendf("PlaceInventoryItem('%s', ", self.class)
			if not self:SavePropsToLuaCode(indent, GetPropFunc, pStr, additional) then
				pStr:append("nil")
			end
			return pStr:append(") ")
		else
			pStr:appendf("PlaceInventoryItem('%s', ", self.class)
			if not self:SavePropsToLuaCode(indent, GetPropFunc, pStr, additional) then
				pStr:append("nil")
			end
			return pStr:append(") ")
		end
	end
end