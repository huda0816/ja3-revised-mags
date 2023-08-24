local GetTileImage = function(ctrl, tile)
    local enabled = ctrl:GetEnabled()
    local slot = ctrl.parent:GetInventorySlotCtrl()
    return enabled and (tile and "UI/Inventory/T_Backpack_Slot_Small_Empty.tga" or "UI/Inventory/T_Backpack_Slot_Small.tga") or "UI/Inventory/T_Backpack_Slot_Small_Empty.tga"
end

local tile_size = 90

function XInventoryItem:OnContextUpdate(item, ...)
    local w, h = item:GetUIWidth(), item:GetUIHeight()
    self:SetMinWidth(tile_size * w)
    self:SetMaxWidth(tile_size * w)
    self:SetMinHeight(tile_size * h)
    self:SetMaxHeight(tile_size * h)
    self:SetGridWidth(w)
    self:SetGridHeight(h)
    self:SetRolloverTitle(item:GetRolloverTitle())
    self:SetRolloverText(item:GetRollover())
    self.idDropshadow:SetImage(item.LargeItem and "UI/Inventory/T_Backpack_Slot_Large" or GetTileImage(self.idItemPad))
    self.idItemPad:SetImage(item.LargeItem and "UI/Inventory/T_Backpack_Slot_Large_Empty.tga" or "UI/Inventory/T_Backpack_Slot_Small_Empty.tga")
    local slot = self:GetInventorySlotCtrl()
    if slot and IsEquipSlot(slot.slot_name) then
        self.idItemPad:SetImage(item.LargeItem and "UI/Inventory/T_Backpack_Slot_Large.tga" or GetTileImage(self.idItemPad))
    end
    self.idRollover:SetImage(item.LargeItem and "UI/Inventory/T_Backpack_Slot_Large_Hover.tga" or "UI/Inventory/T_Backpack_Slot_Small_Hover.tga")
    self.idRollover:SetImageColor(4291018156)
    self.idText:SetText(item:GetItemSlotUI() or "")
    if IsKindOfClasses(item, "Armor", "Firearm", "HeavyWeapon", "MeleeWeapon", "ToolItem", "Medicine") and not IsKindOf(item, "InventoryStack") then
        self.idTopRightText:SetText(item:GetConditionText() or "")
    end
    if IsKindOf(item, "Mag") then
        local colorStyle = 'AmmoBasicColor'
        if item.ammo and item.ammo.colorStyle and item.ammo.colorStyle ~= 'AmmoBasicColor' then
            colorStyle  = item.ammo.colorStyle
        end
        local amount
        if item.ammo then amount = item.ammo.Amount 
        else amount = 0 end
        local text = '<color ' .. colorStyle .. '>' .. amount .. '</color>'
        self.idTopRightText:SetText(text)
    end
    if IsKindOf(item, "Ammo") and item.IconText then
        local colorStyle = 'AmmoBasicColor'
        if item.ammo and item.ammo.colorStyle and item.ammo.colorStyle ~= 'AmmoBasicColor' then
            colorStyle  = item.ammo.colorStyle
        end
        local text = '<color ' .. colorStyle .. '>' .. item.IconText or item.Caliber .. '</color>'
        self.idTopRightText:SetText(text)
    end
    local txt = item:GetItemStatusUI()
    self.idCenterText:SetTextStyle("DescriptionTextAPRed")
    self.idCenterText:SetText(txt)
    self.idItemImg:SetTransparency(txt and txt ~= "" and 128 or 0)
    self.idItemImg:SetImage(item:GetItemUIIcon())
    if item.SubIcon and item.SubIcon ~= "" then
        self.idItemImg.idItemSubImg:SetImage(item.SubIcon or "")
    end
end