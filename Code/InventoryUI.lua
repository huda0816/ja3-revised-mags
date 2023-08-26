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
    print(item)

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

  function XInventorySlot:FindItemWnd(pt)
    if IsKindOf(pt, "InventoryItem") then
      for wnd, item in pairs(self.item_windows) do
        if pt == item then
          return wnd, item
        end
      end
    else
      for wnd, item in pairs(self.item_windows) do
        if wnd:MouseInWindow(pt) then
            --[[if IsKindOf(pt, "Mag") then
                return wnd, UnstackMag(item)
            end]]--
          return wnd, item
        end
      end
    end
  end


  function XDragAndDropControl:StartDrag(drag_win, pt)
    self.drag_win = drag_win
    DragSource = self
    drag_win:AddDynamicPosModifier({id = "Drag", target = "mouse"})
    local winRelativePt = point(drag_win.box:minx() - pt:x(), drag_win.box:miny() - pt:y())
    drag_win:AddInterpolation({
      id = "Move",
      type = const.intRect,
      duration = 0,
      originalRect = drag_win.box,
      targetRect = box(winRelativePt:x(), winRelativePt:y(), drag_win.box:sizex() + winRelativePt:x(), drag_win.box:sizey() + winRelativePt:y())
    })
    drag_win:SetDock("ignore")
    drag_win:SetParent(self.desktop)
    drag_win.DrawOnTop = true
    self:UpdateDrag(drag_win, pt)
    self.desktop:SetMouseCapture(self)
  end

  
--[[function MergeStackIntoContainer(dest_container, dest_slot, item, check, up_to_amount, local_changes)
    print('MergeStackIntoContainer')
    local get_local_changes = function(i)
      return local_changes and local_changes[i] or 0
    end
    local a = Min(item.Amount, up_to_amount)
    local cls = item.class
    local other_stack_items = {}

    if IsKindOf(item, "Mag") then
        print('here')
        dest_container:ForEachItemInSlot(dest_slot, false, function(item_at_dest)
            if item_at_dest.class == cls then
                if(item.ammo) then
                    print('inserting')
                    table.insert(item_at_dest.ammo, item.ammo[1])
                    print(item_at_dest.ammo)
                else
                    print('inserting_empty')
                    table.insert(item_at_dest.ammo, {})
                end
            end
            item_at_dest.Amount = item_at_dest.Amount + 1
        end)
        item.Amount = item.Amount - 1
        return true, 1
    end

    dest_container:ForEachItemInSlot(dest_slot, false, function(item_at_dest)
      if item_at_dest.class == cls then
        table.insert(other_stack_items, item_at_dest)
      end
    end)
    table.sort(other_stack_items, function(a, b)
      local a_a = a.Amount + get_local_changes(a)
      local b_a = b.Amount + get_local_changes(a)
      return a_a > b_a
    end)
    for _, item_at_dest in ipairs(other_stack_items) do
      local to_add = item_at_dest.MaxStacks - (item_at_dest.Amount + get_local_changes(item_at_dest))
      to_add = Min(to_add, a)
      if 0 < to_add then
        a = a - to_add
        if not check then
          item.Amount = item.Amount - to_add
          item_at_dest.Amount = item_at_dest.Amount + to_add
        elseif local_changes then
          local_changes[item] = (local_changes[item] or 0) - to_add
          local_changes[item_at_dest] = (local_changes[item_at_dest] or 0) + to_add
        end
        if a <= 0 then
          break
        end
      end
    end
    return a ~= item.Amount, a
  end]]--

  function InventoryStack:MergeStack(otherItem, amount)
    amount = amount or otherItem.Amount
    local to_add = Min(amount, otherItem.Amount, self.MaxStacks - self.Amount)
    
    if  IsKindOf(otherItem, "Mag") then
        if self.ammo then
            table.insert(self.ammo, otherItem.ammo)
        else
            self.ammo={}
            table.insert(self.ammo, {})
            table.insert(self.ammo, otherItem.ammo)
        end
    end

    self.Amount = self.Amount + to_add
    otherItem.Amount = otherItem.Amount - to_add
    return otherItem.Amount <= 0
  end