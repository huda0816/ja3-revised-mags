function FindWeaponReloadTarget(item, ammo)
    if not IsKindOfClasses(ammo, "Ammo", "Ordnance","Mag") or not IsKindOf(item, "Firearm") then
      return false
    end
    if IsKindOf(ammo, "Mag") and not item.Platform == ammo.Platform then
      return false
    end
    if item.Caliber == ammo.Caliber then
      return item
    end
    
    local sub = item:GetSubweapon("Firearm")
    if sub then
      return sub.Caliber == ammo.Caliber and sub
    end
  end
  function IsWeaponReloadTarget(drag_item, target_item)
    local target = FindWeaponReloadTarget(target_item, drag_item)
    return target and IsWeaponAvailableForReload(target, {drag_item})
  end
function IsWeaponAvailableForReload(weapon, ammoForWeapon)
  if not ammoForWeapon or not IsKindOf(weapon, "Firearm") then
    return false
  end
  local anyAmmo
  local onlyAmmoIsCurrent
  if IsKindOfClasses(ammoForWeapon[1], "Ammo", "Ordnance") then 
      anyAmmo = 0 < #ammoForWeapon
      onlyAmmoIsCurrent = weapon.ammo and #ammoForWeapon == 1 and ammoForWeapon[1].class == weapon.ammo.class
  elseif IsKindOf(ammoForWeapon[1], "Mag") then
      return true
  end
  local fullMag = weapon.ammo and weapon.ammo.Amount == weapon.MagazineSize
  if fullMag then
    if onlyAmmoIsCurrent or not anyAmmo then
      return false, AttackDisableReasons.FullClip
    else
      return true, AttackDisableReasons.FullClipHaveOther
    end
  elseif not anyAmmo then
    return false, AttackDisableReasons.NoAmmo
  end
  return true
end

function Firearm:Reload(ammo, suspend_fx, delayed_fx)
  local prev_ammo = self.ammo
  local prev_id = self.ammo and self.ammo.class
  local add = 0
  local change
  if not IsKindOfClasses(ammo, "Mag") then 
      if self.ammo and prev_id == ammo.class then
          add = Max(0, Min(ammo.Amount, self.MagazineSize - self.ammo.Amount))
          self.ammo.Amount = self.ammo.Amount + add
          ammo.Amount = ammo.Amount - add
          change = 0 < add
          ObjModified(self)
          return false, false, change
      else
          change = true
          if ammo and 0 < ammo.Amount then
              add = Min(ammo.Amount, self.MagazineSize)
              local item = PlaceInventoryItem(ammo.class)
              ammo.Amount = ammo.Amount - add
              self.ammo = item
              self.ammo.Amount = add
          end
          self:RemoveModifiers("ammo")
          for _, mod in ipairs(self.ammo.Modifications) do
              self:AddModifier("ammo", mod.target_prop, mod.mod_mul, mod.mod_add)
          end
      end
  elseif IsKindOfClasses(ammo, "Mag") then
      local prev_mag_ammo = ammo.ammo
      self.ammo = prev_mag_ammo
      ammo.ammo = prev_ammo
      
      self:RemoveModifiers("ammo")

      if(self.ammo) then
          for _, mod in ipairs(self.ammo.Modifications) do
              self:AddModifier("ammo", mod.target_prop, mod.mod_mul, mod.mod_add)
          end
      end
      ObjModified(self)
      ObjModified(ammo)
      return false, false, change
  end
  if not suspend_fx then
    CreateGameTimeThread(function(obj, delayed_fx)
      if delayed_fx then
        Sleep(InteractionRand(500, "ReloadDelay"))
      end
      if GetMercInventoryDlg() then
        PlayFX("WeaponLoad", "start", not obj.object_class and obj.weapon and obj.weapon.object_class, obj.class)
      else
        local vo = obj:GetVisualObj()
        local actor_class = vo.fx_actor_class
        vo.fx_actor_class = self.class
        PlayFX("WeaponReload", "start", vo)
        vo.fx_actor_class = actor_class
      end
    end, self, delayed_fx)
  end
  ObjModified(self)
  return prev_ammo, not suspend_fx, change
end

function GetInventoryItemDragDropFXActor(item)
  if IsKindOf(item, "Ammo") or IsKindOf(item, "Mag") then
    return item.Caliber
  end
  if IsKindOf(item, "Armor") then
    if item.Slot == "Head" then
      return "ArmorHelmet"
    elseif item.PenetrationClass <= 2 then
      return "ArmorLight"
    else
      return "ArmorHeavy"
    end
  end
  if InventoryItemDefs[item.class].group == "Magazines" then
    return "Magazines"
  end
  return item.class
end

function FindMagReloadTarget(item, ammo)
  if not IsKindOfClasses(ammo, "Ammo", "Ordnance") or not IsKindOf(item, "Mag") then
    return false
  end
  if item.Caliber == ammo.Caliber  then
    return item
  end
end
function IsMagReloadTarget(drag_item, target_item)
  local target = FindMagReloadTarget(target_item, drag_item)
  return target and IsMagAvailableForReload(target, {drag_item})
end
function IsMagAvailableForReload(mag, ammoForWeapon)
  if not ammoForWeapon or not IsKindOf(mag, "Mag") then
    return false
  end
  local anyAmmo = 0 < #ammoForWeapon
  local fullMag = false
  if not mag.ammo then fullMag = false
  elseif mag.ammo.Amount == mag.MagazineSize then fullMag = true end

  if fullMag then
    if not anyAmmo then
      return false, AttackDisableReasons.FullClip
    else
      return true, AttackDisableReasons.FullClipHaveOther
    end
  elseif not anyAmmo then
    return false, AttackDisableReasons.NoAmmo
  end
  return true
end

function Unit:GetReloadAP(weapon, ammo)
  local unit = g_Units[weapon.owner]
  if IsKindOf(ammo, "Mag") then
    local ap = ammo.ReloadAP or RevisedMagConfigValues.MagBaseReloadAP

    if weapon.Tags then
      if weapon:HasTag("Bullpup") then
          ap = ap + 1
      end
  end
    return ap
  end
  return Min(unit:GetMaxActionPoints()-1, RevisedMagConfigValues.NonMagReloadAP)
end

function MagReload(mag, ammo, suspend_fx, delayed_fx)
  local prev_ammo = mag.ammo
  local add = 0
  local change
  if prev_ammo then
    if mag.ammo.class == ammo.class then
        add = Max(0, Min(ammo.ammo.Amount, mag.MagazineSize - mag.ammo[1].Amount))
        mag.ammo.Amount = mag.ammo.Amount + add
        ammo.Amount = ammo.Amount - add
        change = 0 < add
        ObjModified(mag)
        return false, false, change
    else
      change = true
      add = Min(ammo.Amount, mag.MagazineSize)
      
      mag.ammo = PlaceInventoryItem(ammo.class)
      mag.ammo.Amount = add
  
      ammo.Amount = ammo.Amount - add
    end
  else
    add = Min(ammo.Amount, mag.MagazineSize)
    mag.ammo=PlaceInventoryItem(ammo.class)
    mag.ammo.Amount = add

    ammo.Amount = ammo.Amount - add
    ObjModified(mag)
    return false, false, change
  end
  if not suspend_fx then
    CreateGameTimeThread(function(obj, delayed_fx)
      if delayed_fx then
        Sleep(InteractionRand(500, "ReloadDelay"))
      end
      if GetMercInventoryDlg() then
        PlayFX("WeaponLoad", "start", not obj.object_class and obj.weapon and obj.weapon.object_class, obj.class)
      else
        local vo = obj:GetVisualObj()
        local actor_class = vo.fx_actor_class
        vo.fx_actor_class = self.class
        PlayFX("WeaponReload", "start", vo)
        vo.fx_actor_class = actor_class
      end
    end, self, delayed_fx)
  end
  ObjModified(mag)
  return prev_ammo, not suspend_fx, change
end
function OnUnloadMag()
end

function GetAPCostAndUnit(item, src_container, src_container_slot_name, dest_container, dest_container_slot_name, item_at_dest, is_reload)
  if not is_reload and not dest_container:CheckClass(item, dest_container_slot_name) then
    return 0, GetInventoryUnit()
  end
  local ap = 0
  local unit = false
  local action_name = false
  local costs = const["Action Point Costs"]
  local are_diff_containers = src_container ~= dest_container
  local is_src_bag = IsKindOf(src_container, "SquadBag")
  local is_dest_bag = IsKindOf(dest_container, "SquadBag")
  local is_src_unit = IsKindOfClasses(src_container, "Unit", "UnitData")
  local is_dest_unit = IsKindOfClasses(dest_container, "Unit", "UnitData")
  local is_src_dead = is_src_unit and src_container:IsDead()
  local is_dest_dead = is_dest_unit and dest_container:IsDead()
  local between_bag_and_unit = is_src_bag and is_dest_unit and not is_src_dead or is_dest_bag and is_src_unit and not is_src_dead
  local is_refill, is_combine
  is_refill = IsMedicineRefill(item, item_at_dest)
  is_combine = not is_dest_dead and not IsKindOf(dest_container, "ItemContainer") and InventoryIsCombineTarget(item, item_at_dest)
  if are_diff_containers and is_dest_bag and (not is_src_unit or is_src_dead) then
    ap = costs.PickItem
    unit = GetInventoryUnit()
    action_name = T(273687388621, "Put in squad supplies")
  end
  if are_diff_containers and not between_bag_and_unit then
    if (not is_src_unit or is_src_dead) and is_dest_unit and not is_dest_dead then
      ap = costs.PickItem
      unit = dest_container
      action_name = T(265622314229, "Put in backpack")
    elseif is_src_unit and is_dest_unit and not is_src_dead and not is_dest_dead and not IsKindOf(item, "SquadBagItem") then
      ap = costs.GiveItem
      unit = src_container
      action_name = T({
        386181237071,
        "Give to <merc>",
        merc = dest_container.Nick
      })
    end
  end
  if is_refill then
    return 0, unit or GetInventoryUnit(), T(479821153570, "Refill")
  end
  if is_combine then
    return 0, unit or GetInventoryUnit(), T(426883432738, "Combine")
  end
  if is_reload then
    local dest_unit = dest_container
    if IsKindOf(dest_unit, "UnitData") then
      dest_unit = g_Units[dest_unit.session_id]
    end
    local inv_unit = GetInventoryUnit()
    unit = IsKindOf(dest_unit, "Unit") and not dest_unit:IsDead() and dest_unit or inv_unit
    local action = CombatActions.Reload
    local pos = dest_container:GetItemPackedPos(item_at_dest)
    ap = ap + action:GetAPCost(unit, {
      weapon = item_at_dest.class,
      item = item,
      pos = pos
    }) or 0
    action_name = T(160472488023, "Reload")
  elseif IsEquipSlot(dest_container_slot_name) and (not (src_container == dest_container and IsEquipSlot(src_container_slot_name)) or src_container_slot_name ~= dest_container_slot_name) then
    ap = ap + item:GetEquipCost()
    unit = dest_container
    action_name = T(622693158009, "Equip")
  end
  if not unit and is_src_unit and IsKindOf(dest_container, "LocalDropContainer") then
    unit = src_container
    action_name = T(778324934848, "Drop")
  end
  unit = unit or GetInventoryUnit()
  return ap, unit, action_name
end

function UnloadWeapon(item, squadBag)
  local ammo = item.ammo
  item.ammo = false
  if ammo and ammo.Amount > 0 then
    squadBag:AddAndStackItem(ammo)
  end
  if IsKindOf(item, "Firearm") then
    item:OnUnloadWeapon()
  end
end

