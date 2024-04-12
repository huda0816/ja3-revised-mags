function OnMsg.DataLoaded()
	local reloadButton = REV_CustomSettingsUtils.XTemplate_FindElementsByProp(
		XTemplates.UIWeaponDisplay, 'Id', 'idReloadButton')

	if reloadButton and reloadButton.element then
		reloadButton.element.OnContextUpdate = function(self, context, ...)
			local weaponContainer = self:ResolveId("node")
			local unitContainer = weaponContainer:ResolveId("node")
			local unit = unitContainer.context
			local weapon = weaponContainer.context
			local enabled = false
			if not weapon.Magazine then
				enabled = REV_IsNonMagReloadEnabled({ unit = unit, item = weapon })
			else
				enabled = REV_IsReloadWithMagEnabled({ unit = unit, item = weapon })
			end
			-- TODO: Check if there is alternative ammo available and remove unused checks
			self:SetEnabled(enabled)
			self:ResolveId("node").context.item = weapon
			self:ResolveId("node").context.unit = unit
			self:SetGridY(#self.parent + 1) -- Last
		end

		reloadButton.element.OnPress = function(self, gamepad)
			SpawnWeaponUiReloadPopup(self, "reload")
		end

		reloadButton.element[3].func = nil
		reloadButton.element[4].func = nil
		reloadButton.element[5].func = nil
	end

	local subReloadButton = REV_CustomSettingsUtils.XTemplate_FindElementsByProp(
		XTemplates.UIWeaponDisplay, 'Id', 'idSubReloadButton')

	if subReloadButton and subReloadButton.element then
		subReloadButton.element.OnContextUpdate = function(self, context, ...)
			local weapon = self:ResolveId("node").context
			local item = weapon
			while item.parent_weapon do
				item = item.parent_weapon
			end
			local enabled
			local units = Selection
			if item and item.owner then
				local owner = g_Units[item.owner]
				enabled = REV_IsNonMagReloadEnabled({ unit = owner, item = weapon })
			end
			self:SetEnabled(enabled)
			self:ResolveId("node").context.item = weapon
			self:ResolveId("node").context.unit = units[1]
		end

		subReloadButton.element.OnPress = function(self, gamepad)
			SpawnWeaponUiReloadPopup(self, "reload")
		end

		subReloadButton.element[3].func = nil
		subReloadButton.element[4].func = nil
		subReloadButton.element[5].func = nil
	end
end

local REV_SpawnedPopup = nil

function SpawnWeaponUiReloadPopup(actionButton, action)
	local node = actionButton:ResolveId("node")
	local context = node.context
	context.action = action
	if node.spawned_popup then
		node.spawned_popup:Close()
		node.spawned_popup = nil
		if REV_SpawnedPopup then
			REV_SpawnedPopup = nil
		end
		return
	end
	local popup = XTemplateSpawn("InventoryContextSubMenu", terminal.desktop, context)
	popup:SetAnchorType("right")
	popup:SetAnchor(actionButton.box)
	popup.popup_parent = node
	node.spawned_popup = popup

	REV_SpawnedPopup = REV_SpawnedPopup or nil
	REV_SpawnedPopup = popup
	popup:Open()
end

function OnMsg.SelectionChange()
	if REV_SpawnedPopup then
		REV_SpawnedPopup:Close()
		REV_SpawnedPopup = nil
	end
end

function OnMsg.UnitSwappedWeapon(unit)
	if REV_SpawnedPopup then
		REV_SpawnedPopup:Close()
		REV_SpawnedPopup = nil
	end
end
