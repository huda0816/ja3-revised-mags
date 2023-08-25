function XInventorySlot:OnMouseButtonDown(pt, button)
    if button == "M" then
      return "break"
    end
    if not self:GetEnabled() then
      return "break"
    end
    local dlgContext = GetDialogContext(self)
    if dlgContext and InventoryDisabled(dlgContext) then
      PlayFX("IactDisabled", "start", InventoryDragItem)
      return "break"
    end
    local wnd_found, item = self:FindItemWnd(pt)
    if InventoryIsCompareMode() then
      return "break"
    end
    if button == "L" then
      if not wnd_found then
        local wnd, l, t = self:FindTile(pt)
        if wnd then
          PlayFX("InventoryEmptyTileClick", "start")
        end
      end
      local unit = GetInventoryUnit()
      if item and item.locked then
        wnd_found.idimgLocked:SetImageColor(GameColors.I)
        PlayVoiceResponse(unit, "LockedItemMove")
        PlayFX("IactDisabled", "start", item)
        return "break"
      end
      if terminal.IsKeyPressed(const.vkShift) == true and wnd_found then
        if not IsKindOf(item, "InventoryStack") or item.Amount < 2 then
          return "break"
        end
        local container = self.context
        if IsKindOfClasses(container, "SquadBag", "SectorStash", "ItemDropContainer") then
          return "break"
        end
        local slot = GetContainerInventorySlotName(container)
        local freeSpace = container:FindEmptyPosition(slot, item)
        if not freeSpace then
          return "break"
        end
        OpenDialog("SplitStackItem", false, {
          context = container,
          item = item,
          slot_wnd = self
        })
        return "break"
      end
      WasDraggingLastLMBClick = not not InventoryDragItem
    end
    if button == "R" then
      if InventoryDragItem then
        self:CancelDragging()
        return "break"
      else
        local dlg = GetDialog(self)
        if wnd_found then
          if dlg.item_wnd == wnd_found then
            self:ClosePopup()
          else
            self:OpenPopup(wnd_found, item, dlg)
            local context = self:GetContext()
            if self.slot_name == "Inevnetory" and IsKindOfClasses(context, "Unit", "UnitData") then
              InventoryUpdate(context)
            end
          end
          return "break"
        end
      end
    end
    return XDragAndDropControl.OnMouseButtonDown(self, pt, button)
  end