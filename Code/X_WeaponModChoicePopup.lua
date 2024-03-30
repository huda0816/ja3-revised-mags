-- function OnMsg.DataLoaded()
-- 	local weaponModChoicePopupEach = REV_CustomSettingsUtils.XTemplate_FindElementsByProp(
-- 		XTemplates.WeaponModChoicePopup, 'comment', 'slot alternatives')

-- 	if weaponModChoicePopupEach and weaponModChoicePopupEach.element then
-- 		weaponModChoicePopupEach.element.array = function(parent, context)
-- 			return getAvailableComponents(context.slot.AvailableComponents, context[1])
-- 		end

-- 		weaponModChoicePopupEach.element.run_after = function(child, context, item, i, n, last)
-- 			context.affordable = true

-- 			rawset(child, "itemId", item)
-- 		end
-- 	end

-- 	local preview = REV_CustomSettingsUtils.XTemplate_FindElementsByProp(
-- 		XTemplates.WeaponModChoicePopup, 'Id', 'idPreview')

-- 	if preview and preview.element then
-- 		preview.element[1].OnContextUpdate = function(self, context, ...)
-- 			local component = context[1]
-- 			local modifyMode = context.modifyMode
-- 			local node = self:ResolveId("node")
-- 			local popup = self:ResolveId("node"):ResolveId("node")
-- 			local modifyDlg = GetDialog("ModifyWeaponDlg").idModifyDialog

-- 			local description = GetWeaponComponentDescription(component)
-- 			node.idText:SetText(description)

-- 			local container = node.idCostsSection
-- 			container:SetVisible(false)

-- 			if #container > 0 then -- Should always be true!
-- 				local first = container[1]
-- 				local pOne = first.Padding
-- 				first:SetPadding(box(pOne:minx(), pOne:miny() + 5, pOne:maxx(), pOne:maxy()))

-- 				local last = container[#container]
-- 				local pLast = last.Padding
-- 				last:SetPadding(box(pLast:minx(), pLast:miny(), pLast:maxx(), pLast:maxy() + 5))
-- 			end

-- 			if component == "" then -- Going to empty
-- 				node.idTitle:SetText(T(617720036390, "Empty"))
-- 				node.idDifficultySection:SetVisible(false)
-- 				return
-- 			end

-- 			node.idDifficultySection:SetVisible(false)

-- 			local name = rawget(component, "name") or component.DisplayName
-- 			node.idTitle:SetText(name)
-- 		end
-- 	end

-- 	local xButtons = REV_CustomSettingsUtils.XTemplate_FindElementsByProp(
-- 		XTemplates.WeaponModChoicePopup, '__class', 'XButton', "all")

-- 	if xButtons then
-- 		for i, xButton in ipairs(xButtons) do
-- 			if xButton and xButton.element then
-- 				xButton.element.OnPress = function(self, gamepad)
-- 					local modifyDlg = GetDialog("ModifyWeaponDlg").idModifyDialog
-- 					local host = modifyDlg and modifyDlg:ResolveId("idChoicePopup")
-- 					if not modifyDlg or not host.context then return "hidden" end

-- 					modifyDlg:ApplyChangesSlot(host.context.slot.SlotType)

-- 					assert(IsKindOf(host, "WeaponModChoicePopupClass"))
-- 					host:Close()
-- 				end
-- 			end
-- 		end
-- 	end

-- 	-- if xButtons[2] and xButtons[2].element then
-- 	-- 	local EachButton = xButtons[2].element

-- 	-- 	-- local Original_OnContextUpdate = EachButton.OnContextUpdate

-- 	-- 	-- EachButton.OnContextUpdate = function(self, context, ...)
-- 	-- 	-- 	XContextControl.OnContextUpdate(self, context)

-- 	-- 	-- 	self.idOverlay:SetVisible(false)
-- 	-- 	-- 	self.idIcon:SetDesaturation(0)
-- 	-- 	-- 	self.idImage:SetDesaturation(0)
-- 	-- 	-- 	self:SetTransparency(0)

-- 	-- 	-- 	local weapon = ResolvePropObj(self.context)
-- 	-- 	-- 	local slot = self.context.slot
-- 	-- 	-- 	local item = weapon.components[self.context.item.Slot]
-- 	-- 	-- 	local selected = item == self.context.item.id
-- 	-- 	-- 	self:SetTransparency(selected and 125 or 0)
-- 	-- 	-- 	rawset(self, "currentlyEquipped", selected)
-- 	-- 	-- 	if IsKindOf(self.context.item, "WeaponColor") then
-- 	-- 	-- 		self.idIcon:SetBackground(self.context.item.color)
-- 	-- 	-- 	else
-- 	-- 	-- 		self.idIcon:SetImage(GetWeaponComponentIcon(self.context.item, weapon))
-- 	-- 	-- 	end
-- 	-- 	-- end

-- 	-- 	EachButton.OnPress = function(self, gamepad)
-- 	-- 		local modifyDlg = GetDialog("ModifyWeaponDlg").idModifyDialog
-- 	-- 		local host = modifyDlg and modifyDlg:ResolveId("idChoicePopup")
-- 	-- 		if not modifyDlg or not host.context then return "hidden" end

-- 	-- 		modifyDlg:ApplyChangesSlot(host.context.slot.SlotType)

-- 	-- 		assert(IsKindOf(host, "WeaponModChoicePopupClass"))
-- 	-- 		host:Close()
-- 	-- 	end
-- 	-- end

-- 	-- if xButtons[1] and xButtons[1].element then
-- 	-- 	local DefaultButton = xButtons[1].element

-- 	-- 	local Original_OnPress = DefaultButton.OnPress

-- 	-- 	DefaultButton.OnPress = function(self, gamepad)
-- 	-- 		local modifyDlg = GetDialog("ModifyWeaponDlg").idModifyDialog
-- 	-- 		local host = modifyDlg and modifyDlg:ResolveId("idChoicePopup")
-- 	-- 		if not modifyDlg or not host.context then return "hidden" end

-- 	-- 		modifyDlg:ApplyChangesSlot(host.context.slot.SlotType)

-- 	-- 		assert(IsKindOf(host, "WeaponModChoicePopupClass"))
-- 	-- 		host:Close()
-- 	-- 	end
-- 	-- end


-- 	-- local actionModify = REV_CustomSettingsUtils.XTemplate_FindElementsByProp(
-- 	-- 	XTemplates.WeaponModChoicePopup, 'ActionId', 'actionModify')

-- 	-- 	if actionModify and actionModify.element then

-- 	-- 		local OriginalactionModifyActionState =


-- 	-- 	end
-- end

-- function pressWeaponModChoicePopupButton()
-- 	local modifyDlg = GetDialog("ModifyWeaponDlg").idModifyDialog
-- 	local host = modifyDlg and modifyDlg:ResolveId("idChoicePopup")
-- 	if not modifyDlg or not host.context then return "hidden" end

-- 	modifyDlg:ApplyChangesSlot(host.context.slot.SlotType)

-- 	assert(IsKindOf(host, "WeaponModChoicePopupClass"))
-- 	host:Close()
-- end

-- function getAvailableComponents(components, weapon)
-- 	local owner = weapon.owner

-- 	local availableComponents = {}

-- 	if owner and gv_UnitData[owner] then
-- 		local unit = gv_UnitData[owner]

-- 		local inventory = unit.Inventory

-- 		for i, item in ipairs(inventory) do
-- 			if IsKindOfClasses(item, components) then
-- 				table.insert(availableComponents, item.class)
-- 			end
-- 		end
-- 	end

-- 	return availableComponents
-- end

-- function getItemComponent(component, unit)
-- 	local inventory = unit.Inventory

-- 	for i, item in ipairs(inventory) do
-- 		if IsKindOfClasses(item, component) then
-- 			return item
-- 		end
-- 	end
-- end

-- function ModifyWeaponDlg:ApplyChangesSlot(modSlot, skipChance)
-- 	assert(modSlot)
-- 	if not modSlot then return end

-- 	local actualWeapon = self.context.weapon
-- 	local owner = self.context.owner
-- 	local slot = self.context.slot
-- 	if not self.canEdit then return end
-- 	assert(type(self.context.owner) == "string")
-- 	local unit

-- 	if gv_UnitData[owner] then
-- 		unit = gv_UnitData[owner]
-- 	end

-- 	local componentToChangeTo = self.weaponClone.components[modSlot]
-- 	local componentToChangePreset = WeaponComponents[componentToChangeTo]
-- 	local playerMechSkill, bestMechSkillUnit, difficulty, allowed = self:GetModificationDifficultyParams(
-- 		componentToChangePreset)

-- 	-- Changing to empty is free
-- 	if componentToChangeTo == "" then
-- 		skipChance = true
-- 	end

-- 	-- This needs to be in a thread as the popup needs to close first.
-- 	-- We can't call the function before closing it as then we cannot observe its changes on the weapon clone.
-- 	CreateMapRealTimeThread(function()
-- 		local success, modAdded
-- 		if not skipChance then
-- 			PlayFX("WeaponModificationSuccess", "start")
-- 			unit = unit or table.find_value(self.playerUnits, "session_id", bestMechSkillUnit)
-- 			success = true
-- 			modAdded = true
-- 		else
-- 			success = true
-- 		end

-- 		CombatLog("important",
-- 			T { 753849538837, "Modification of <weapon> successful", weapon = actualWeapon.DisplayName })

-- 		local clone = self.weaponClone
-- 		clone:SetWeaponComponent(modSlot, componentToChangeTo)
-- 		clone:UpdateVisualObj(self.weaponModel)

-- 		local oldComponent = actualWeapon.components[modSlot]

-- 		if unit then
-- 			if componentToChangeTo and componentToChangeTo ~= "" then
-- 				local newItem = getItemComponent(componentToChangeTo, unit)
-- 				unit:RemoveItem("Inventory", newItem)
-- 			end

-- 			if oldComponent and oldComponent ~= "" then
-- 				local oldItem = PlaceInventoryItem(oldComponent)
-- 				unit:AddItem("Inventory", oldItem)
-- 			end
-- 		end

-- 		NetSyncEvent("WeaponModified", owner, slot, clone.components, clone.components.Color, success, modAdded,
-- 			bestMechSkillUnit, modSlot, oldComponent)

-- 		CreateMapRealTimeThread(function()
-- 			if oldComponent and oldComponent ~= "" then
-- 				PlayFX("WeaponComponentDetached", "start", oldComponent)
-- 				Sleep(1000)
-- 			end
-- 			if componentToChangeTo and componentToChangeTo ~= "" then
-- 				PlayFX("WeaponComponentAttached", "start", componentToChangeTo)
-- 			end
-- 		end)
-- 		-- PlayFX("WeaponColorChanged", "end", actualWeapon, colorId)
-- 		-- weapon:UpdateColorMod(self.weaponModel) -- The weapon in the cabinet
-- 		-- weapon:UpdateColorMod() -- The weapon in the world
-- 		--[[ObjModified(actualWeapon)
-- 		self.idToolBar:OnUpdateActions()]]
-- 		if success then
-- 			local mechanic = gv_SatelliteView and gv_UnitData[bestMechSkillUnit] or g_Units[bestMechSkillUnit]
-- 			Msg("WeaponModifiedSuccess", actualWeapon, unit, modAdded, mechanic, modSlot, oldComponent)
-- 		end
-- 	end)
-- end

-- function ModifyWeaponDlg:CanModifySlot(slot, partId)
-- 	local weapon = self.context.weapon
-- 	local slotName = slot.SlotType
-- 	local blocked = false

-- 	-- Check if slot is blocked
-- 	for name, attached in pairs(weapon.components) do
-- 		local def = WeaponComponents[attached]
-- 		if def and def.BlockSlots and next(def.BlockSlots) then
-- 			if table.find(def.BlockSlots, slotName) then
-- 				blocked = attached
-- 				break
-- 			end
-- 		end
-- 	end
-- 	if blocked then return false, "blocked", blocked end

-- 	local availableComponents = slot and getAvailableComponents(slot.AvailableComponents, weapon)

-- 	-- Check if placing any of the slot options is possible due to a blocked slot having a component in it already.
-- 	if availableComponents and #availableComponents > 0 then
-- 		local anyPossible, impossibleBecauseOf = false
-- 		for i, component in ipairs(availableComponents) do
-- 			local def = WeaponComponents[component]
-- 			local blocksAny, blockedId = GetComponentBlocksAnyOfAttachedSlots(weapon, def)
-- 			impossibleBecauseOf = impossibleBecauseOf or blockedId
-- 			if not blocksAny then
-- 				anyPossible = true
-- 				break
-- 			end
-- 		end
-- 		if not anyPossible then
-- 			return false, "blocked", impossibleBecauseOf
-- 		end
-- 	else
-- 		return true, "cantAfford"
-- 	end

-- 	-- If a part id is provided, check if it blocks any of the current components,
-- 	-- or if it itself blocked by an attached component.
-- 	if partId then
-- 		-- Check if there's an attached component in a slot that this component will block
-- 		local partDef = WeaponComponents[partId]
-- 		local blocksAny, blockedId = GetComponentBlocksAnyOfAttachedSlots(weapon, partDef)
-- 		if blocksAny then
-- 			return false, "blocked", blockedId
-- 		end

-- 		for name, attached in pairs(weapon.components) do
-- 			local componentsBlock = GetComponentsBlockedByComponent(attached, weapon.class)
-- 			if componentsBlock[partId] then -- Attached is blocking me
-- 				return false, "blocked", attached
-- 			end
-- 		end

-- 		local componentsWillBlock = GetComponentsBlockedByComponent(partId, weapon.class)
-- 		for name, attached in pairs(weapon.components) do
-- 			if componentsWillBlock[attached] then -- Blocking already attached
-- 				return false, "blocked", attached
-- 			end
-- 		end
-- 	end

-- 	-- local anyOptions = false
-- 	-- local anyAffordable = false
-- 	-- local equipped = weapon.components[slotName]
-- 	-- for i, comp in ipairs(slot.AvailableComponents) do
-- 	-- 	if comp ~= equipped then
-- 	-- 		anyOptions = true
-- 	-- 		local costs, _, affordable = self:GetChangesCost(slotName, comp)
-- 	-- 		if affordable then
-- 	-- 			anyAffordable = true
-- 	-- 			break
-- 	-- 		end
-- 	-- 	end
-- 	-- end
-- 	-- if anyOptions and not anyAffordable then return true, "cantAfford" end

-- 	return true
-- end
