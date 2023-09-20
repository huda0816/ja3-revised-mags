function IsReload(ammo, weapon)
    if IsKindOf(weapon,"Mag") and IsKindOf(ammo,"Mag") then return false end

    if IsMagReload(ammo, weapon) then return weapon and IsMagReloadTarget(ammo, weapon) end
    return weapon and IsWeaponReloadTarget(ammo, weapon)
end

function IsMagReload(ammo, mag)
    return mag and IsMagReloadTarget(ammo, mag)
end

function MoveItem(args)
    local item = args.item
    local src_container = args.src_container
    local src_container_slot_name = args.src_container_slot_name or args.src_slot
    local dest_container = args.dest_container
    local dest_container_slot_name = args.dest_container_slot_name or args.dest_slot
    local dest_x = args.dest_x or args.x
    local dest_y = args.dest_y or args.y
    local amount = args.amount
    local check_only = args.check_only
    local ap_cost = args.ap_cost
    local merge_up_to_amount = args.merge_up_to_amount
    local local_changes = args.local_changes
    local exec_locally = args.exec_locally
    local sync_call = args.sync_call
    local s_src_x = args.s_src_x
    local s_src_y = args.s_src_y
    local s_item_at_dest = args.s_item_at_dest
    local s_sync_unit = args.s_sync_unit
    local s_player_id = args.s_player_id
    local alternative_swap_pos = args.alternative_swap_pos
    if sync_call then
      NetUpdateHash("MoveItem", item and item.class, item and item.id, dest_container and type(dest_container) == "table" and dest_container.class or dest_container, dest_container_slot_name, src_container and src_container.class, src_container_slot_name)
    end
    exec_locally = not not exec_locally
    if dest_container == "drop" then
      dest_container_slot_name = "Inventory"
      if sync_call then
        dest_container = GetDropContainer(s_sync_unit, false, item)
      else
        dest_container = PlaceObject("LocalDropContainer")
      end
    elseif type(dest_container) == "number" then
      dest_container = PlaceObject("UnopennedSquadBag", {squad_id = dest_container})
    end
    local src_x, src_y
    if src_container then
      src_x, src_y = src_container:GetItemPosInSlot(src_container_slot_name, item)
      if not src_x then
        return "item not found in src container!"
      elseif not s_src_x then
        s_src_x = src_x
        s_src_y = src_y
      end
    end
    local item_at_dest = dest_x and dest_container:GetItemInSlot(dest_container_slot_name, nil, dest_x, dest_y)
    if item_at_dest == item then
      item_at_dest = false
    end
    local item_at_dest_2 = false
    if dest_x and item.LargeItem then
      local other_item_at_dest = dest_container:GetItemInSlot(dest_container_slot_name, nil, dest_x + 1, dest_y)
      if other_item_at_dest == item then
        other_item_at_dest = false
      end
      if item_at_dest and other_item_at_dest and other_item_at_dest ~= item_at_dest then
        if IsEquipSlot(dest_container_slot_name) then
          item_at_dest_2 = other_item_at_dest
        else
          return "too many items underneath"
        end
      end
      if not item_at_dest and other_item_at_dest then
        item_at_dest = other_item_at_dest
      end
    end
    if src_x and dest_x and not item.LargeItem and item_at_dest and item_at_dest.LargeItem then
      local other_item_at_dest = dest_container:GetItemInSlot(dest_container_slot_name, nil, dest_x + 1, dest_y)
      if other_item_at_dest ~= item_at_dest then
        src_x = src_x - 1
      end
    end
    if dbgMoveItem then
      invprint("MoveItem sync", sync_call, "check_only", check_only, "amount", amount, string.format("moving %s %s from %s %s %d %d to %s %s %d %d, item_at_dest %s %s", item.class, tostring(item.id), src_container and src_container.session_id or src_container and src_container.class or false, src_container_slot_name, src_x or -1, src_y or -1, dest_container.session_id or dest_container.class, tostring(dest_container_slot_name), dest_x or -1, dest_y or -1, item_at_dest and item_at_dest.class or tostring(item_at_dest), item_at_dest and tostring(item_at_dest.id) or "n/a"))
    end
    if not sync_call or item_at_dest == s_item_at_dest and src_x == s_src_x and src_y == s_src_y or IsKindOf(src_container, "SectorStash") and item_at_dest == s_item_at_dest then
    elseif IsKindOf(dest_container, "SectorStash") then
      if item_at_dest and not s_item_at_dest then
        item_at_dest = false
        dest_x = nil
        dest_y = nil
      elseif s_item_at_dest then
        item_at_dest = s_item_at_dest
        dest_x, dest_y = dest_container:GetItemPosInSlot(dest_container_slot_name, item_at_dest)
      end
    else
      NetUpdateHash("MoveItem state changed", item_at_dest and item_at_dest.class or "no item_at_dest", s_item_at_dest and s_item_at_dest.class or "no s_item_at_dest", src_x, s_src_x, src_y, s_src_y, src_container, dest_container)
      return "state has changed"
    end
    if not item_at_dest and src_x == dest_x and src_y == dest_y and src_container == dest_container and src_container_slot_name == dest_container_slot_name then
      if dbgMoveItem then
        invprint("no change required")
      end
      return false, "no change"
    end
    local is_reload = IsReload(item, item_at_dest)
    local is_refill = IsMedicineRefill(item, item_at_dest)
    local is_combine = (not IsKindOf(dest_container, "Unit") or not dest_container:IsDead()) and not IsKindOf(dest_container, "ItemContainer") and MoveItem_CombinesItems and InventoryIsCombineTarget(item, item_at_dest)
    if src_container and item.locked then
      return "item is locked"
    end
    if not is_reload and not is_refill then
      if item_at_dest and item_at_dest.locked then
        return "item underneath is locked"
      end
      if item_at_dest_2 and item_at_dest_2.locked then
        return "item underneath is locked"
      end
    end
    local is_local_changes = exec_locally and not sync_call
    local item_is_stack = IsKindOfClasses(item, "InventoryStack")
    local partial_stack_merge = false
    if not is_reload and not is_combine and not is_refill and not dest_container:CheckClass(item, dest_container_slot_name) then
      return "Can't add item to container, wrong class"
    end
    local sync_ap, sync_unit
    if not sync_call then
      sync_ap, sync_unit = GetAPCostAndUnit(item, src_container, src_container_slot_name, dest_container, dest_container_slot_name, item_at_dest, is_reload)
      sync_ap = ap_cost or sync_ap
      if dbgMoveItem then
        invprint("MoveItem ap cost", sync_ap, "InventoryIsCombatMode()", InventoryIsCombatMode())
      end
      if InventoryIsCombatMode() then
        if not sync_unit:UIHasAP(sync_ap) then
          return is_reload and "Unit doesn't have ap to reload" or "Unit doesn't have ap to execute action", false, sync_unit
        end
      else
        sync_ap = 0
      end
    end
    local sync_err = false
    local Sync = function()
      if check_only then
        return true
      end
      if not sync_call then
        local args = MoveItem_SendNetArgs(item, src_container, src_container_slot_name, dest_container, dest_container_slot_name, dest_x, dest_y, amount, merge_up_to_amount, exec_locally, src_x, src_y, item_at_dest, alternative_swap_pos, sync_unit)
        if IsKindOf(sync_unit, "UnitData") then
          NetSyncEvent("MoveItems", args)
        elseif not NetStartCombatAction("MoveItems", sync_unit, sync_ap, args) then
          sync_err = "NetStartCombatAction refused to start"
        end
        if not exec_locally or is_reload or is_refill then
          return true
        end
      end
      return false
    end
    if not item_at_dest then
      local merge_stacks = item_is_stack and not dest_x and not amount
      local local_stack_changes = local_changes and local_changes.local_stack_changes or false
      local local_items_moved = local_changes and local_changes.local_items_moved or false
      local p_pos, reason
      if merge_stacks then
        local is_mergable, new_amount = MergeStackIntoContainer(dest_container, dest_container_slot_name, item, "check", merge_up_to_amount, local_stack_changes)
        if not is_mergable or 0 < new_amount then
          p_pos, reason = dest_container:CanAddItem(dest_container_slot_name, item, dest_x, dest_y, local_items_moved)
          if not p_pos then
            if not is_mergable then
              return "move failed, no part of the stack is transferable and dest inventory refused item", reason, sync_unit
            else
              partial_stack_merge = new_amount
            end
          end
        end
      else
        p_pos, reason = dest_container:CanAddItem(dest_container_slot_name, item, dest_x, dest_y, local_items_moved)
        if not p_pos then
          return "move failed, dest inventory refused item, reason", reason, sync_unit
        end
      end
      local x, y
      if p_pos then
        x, y = point_unpack(p_pos)
        if local_items_moved then
          local_items_moved[xxhash(x, y)] = item
          if item.LargeItem then
            local_items_moved[xxhash(x + 1, y)] = item
          end
        end
      end
      if Sync() then
        return sync_err, partial_stack_merge, sync_unit
      end
      local DoMove = function()
        if src_container then
          local pos, reason = src_container:RemoveItem(src_container_slot_name, item, "no_update")
        end
        local pos, reason = dest_container:AddItem(dest_container_slot_name, item, x, y, is_local_changes)
      end
      if amount and item_is_stack and amount < item.Amount then
        local new_item = item:SplitStack(amount)
        local pos, reason = dest_container:AddItem(dest_container_slot_name, new_item, x, y)
      elseif merge_stacks then
        MergeStackIntoContainer(dest_container, dest_container_slot_name, item, false, merge_up_to_amount)
        if 0 >= item.Amount then
          if src_container then
            src_container:RemoveItem(src_container_slot_name, item, "no_update")
            local cntrl = GetInventorySlotCtrl(true, src_container, src_container_slot_name)
            if cntrl then
              local wnd = cntrl:FindItemWnd(item)
              if wnd then
                wnd:SetVisible(false)
              end
            end
          end
          DoneObject(item)
          item = false
        elseif x then
          DoMove()
        end
      else
        DoMove()
      end
      ObjModified(src_container)
      ObjModified(dest_container)
      MoveItem_UpdateUnitOutfit(src_container, dest_container, check_only)
      InventoryUIRespawn()
      return false, partial_stack_merge, sync_unit
    end
    if item_is_stack and item.class == item_at_dest.class and item_at_dest.Amount < item_at_dest.MaxStacks then
      local to_add = Min(item_at_dest.MaxStacks - item_at_dest.Amount, item.Amount, amount or max_int)
      if amount and amount ~= to_add and not sync_call then
        print("MoveItem requested to add specific amount, but not possible", amount, to_add)
      end
      if Sync() then
        return sync_err
      end
      item_at_dest.Amount = item_at_dest.Amount + to_add
      item.Amount = item.Amount - to_add
      if 0 >= item.Amount then
        if src_container then
          src_container:RemoveItem(src_container_slot_name, item, "no_update")
        end
        DoneObject(item)
        item = false
      end
      ObjModified(src_container)
      ObjModified(dest_container)
      MoveItem_UpdateUnitOutfit(src_container, dest_container, check_only)
      InventoryUIRespawn()
      return false
    end
    if is_reload then
        if not IsKindOf(item_at_dest, "Mag") then
            local weapon_obj = FindWeaponReloadTarget(item_at_dest, item)
            if not weapon_obj then
              return "invalid reload target"
            end
            if Sync() then
              return sync_err
            end
            local prev_loaded_ammo = weapon_obj:Reload(item)
            if prev_loaded_ammo then
              if prev_loaded_ammo.Amount == 0 then
                DoneObject(prev_loaded_ammo)
                prev_loaded_ammo = false
              else
                local squad_id = src_container and src_container.Squad or dest_container.Squad
                if not squad_id then
                  local squads = GetSquadsInSector(gv_CurrentSectorId)
                  squad_id = squads[1] and squads[1].UniqueId
                end
                local prev_ammo_dest_container = GetSquadBagInventory(squad_id)
                prev_ammo_dest_container:AddAndStackItem(prev_loaded_ammo)
              end
            end
            if not IsKindOf(item, "Mag") and item.Amount == 0 then
              if src_container then
                src_container:RemoveItem(src_container_slot_name, item, "no_update")
              end
              DoneObject(item)
              item = false
            else
            end
            ObjModified(src_container)
            if dest_container ~= src_container then
              ObjModified(dest_container)
            end
            MoveItem_UpdateUnitOutfit(src_container, dest_container, check_only)
            InventoryUIRespawn()
            return false
        else
            local mag_obj = FindMagReloadTarget(item_at_dest, item)
            if not mag_obj then
              return "invalid reload target"
            end
            if Sync() then
              return sync_err
            end
            local prev_loaded_ammo = MagReload(mag_obj, item)
            if prev_loaded_ammo then
              if prev_loaded_ammo.Amount == 0 then
                DoneObject(prev_loaded_ammo)
                prev_loaded_ammo = false
              else
                local squad_id = src_container and src_container.Squad or dest_container.Squad
                if not squad_id then
                  local squads = GetSquadsInSector(gv_CurrentSectorId)
                  squad_id = squads[1] and squads[1].UniqueId
                end
                local prev_ammo_dest_container = GetSquadBagInventory(squad_id)
                prev_ammo_dest_container:AddAndStackItem(prev_loaded_ammo)
              end
            end
            ObjModified(src_container)
            if dest_container ~= src_container then
              ObjModified(dest_container)
            end
            MoveItem_UpdateUnitOutfit(src_container, dest_container, check_only)
            InventoryUIRespawn()
            return false
        end
    end
    if is_refill then
      if Sync() then
        return sync_err
      end
      local allmedsNeeded = AmountOfMedsToFill(item_at_dest)
      if allmedsNeeded <= 0 then
        return "not refill needed"
      end
      local usedmeds = Min(item.Amount, allmedsNeeded)
      local max_condition = item_at_dest:GetMaxCondition()
      if usedmeds == allmedsNeeded then
        item_at_dest.Condition = max_condition
      else
        item_at_dest.Condition = Clamp(MulDivRound(usedmeds, max_condition, allmedsNeeded), 0, max_condition)
      end
      item.Amount = item.Amount - usedmeds
      if item.Amount == 0 then
        if src_container then
          src_container:RemoveItem(src_container_slot_name, item, "no_update")
        end
        DoneObject(item)
        item = false
      end
      ObjModified(src_container)
      if dest_container ~= src_container then
        ObjModified(dest_container)
      end
      InventoryUIRespawn()
      return false
    end
    if is_combine then
      if check_only then
        return false
      end
      local recipe = is_combine
      CombineItemsFromDragAndDrop(recipe.id, sync_unit, item, src_container, item_at_dest, dest_container)
      return false
    end
    local swap_src_x = src_x
    if item.LargeItem and dest_container == src_container and dest_container_slot_name == src_container_slot_name and dest_x + 1 == src_x then
      swap_src_x = src_x + 1
    end
    if item_at_dest and IsEquipSlot(src_container_slot_name) and IsEquipSlot(dest_container_slot_name) and (not InventoryCanEquip(item, dest_container, dest_container_slot_name, point_pack(dest_x, dest_y)) or not InventoryCanEquip(item_at_dest, src_container, src_container_slot_name, point_pack(swap_src_x, src_y))) then
      return "Could not swap equipped items"
    end
    if not src_container:CheckClass(item_at_dest, src_container_slot_name) then
      return "Could not swap items, source container does not accept item at dest"
    end
    if not dest_container:CheckClass(item, dest_container_slot_name) then
      return "Could not swap items, dest container does not accept source item"
    end
    local alternative_pos, reason
    if not src_container:IsEmptyPosition(src_container_slot_name, item_at_dest, swap_src_x, src_y, item) then
      if alternative_swap_pos and IsEquipSlot(dest_container_slot_name) and not IsEquipSlot(src_container_slot_name) and item_at_dest then
        alternative_pos, reason = src_container:CanAddItem(src_container_slot_name, item_at_dest, nil, nil, {
          force_empty = {
            [xxhash(src_container:GetItemPosInSlot(src_container_slot_name, item))] = true
          }
        })
        if not alternative_pos then
          return "Could not swap items, item at dest does not fit in source container at the specified position"
        end
      else
        return "Could not swap items, item at dest does not fit in source container at the specified position"
      end
    end
    if not item_at_dest_2 and not dest_container:IsEmptyPosition(dest_container_slot_name, item, dest_x, dest_y, item_at_dest) then
      return "Could not swap items, item does not fit in dest container at the specified position"
    end
    if (item.LargeItem or item_at_dest.LargeItem) and src_container == dest_container and src_container_slot_name == dest_container_slot_name and dest_y == src_y then
      local occupied1, occupied2 = dest_x, item.LargeItem and dest_x + 1 or dest_x
      local needed1, needed2 = swap_src_x, item_at_dest.LargeItem and swap_src_x + 1 or swap_src_x
      if needed1 == occupied1 or needed1 == occupied2 or needed2 == occupied1 or needed2 == occupied2 then
        return "Could not swap items, items overlap after swap"
      end
    end
    if Sync() then
      return sync_err
    end
    src_container:RemoveItem(src_container_slot_name, item, "no_update")
    dest_container:RemoveItem(dest_container_slot_name, item_at_dest, "no_update")
    if item_at_dest_2 then
      dest_container:RemoveItem(dest_container_slot_name, item_at_dest_2, "no_update")
    end
    local pos, reason = dest_container:AddItem(dest_container_slot_name, item, dest_x, dest_y, is_local_changes, dest_x)
    if alternative_pos then
      local x, y = point_unpack(alternative_pos)
      local pos2, reason2 = src_container:AddItem(src_container_slot_name, item_at_dest, x, y, is_local_changes, dest_x)
    else
      local pos2, reason2 = src_container:AddItem(src_container_slot_name, item_at_dest, swap_src_x, src_y, is_local_changes, dest_x)
    end
    if item_at_dest_2 then
      src_container:AddItem(src_container_slot_name, item_at_dest_2, swap_src_x + 1, src_y, is_local_changes)
    end
    MoveItem_UpdateUnitOutfit(src_container, dest_container, check_only)
    InventoryUIRespawn()
    return false
  end