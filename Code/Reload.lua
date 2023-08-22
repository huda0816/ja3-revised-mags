function FindWeaponReloadTarget(item, ammo)
    if not IsKindOfClasses(ammo, "Ammo", "Ordnance","Mag") or not IsKindOf(item, "Firearm") then
      return false
    end
    if IsKindOfClasses("Mag") and not item.Platform == ammo.Platform then
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
    elseif IsKindOfClasses(ammoForWeapon[1], "Mag") then
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
    local prev_ammoAmount
    if(self.ammo) then prev_ammoAmount = self.ammo.Amount
    else prev_ammoAmount = 0
    end
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
        self.ammo = ammo.ammo
        if(self.ammo) then self.ammo.Amount = ammo.Amount end
        ammo.Amount = prev_ammoAmount
        ammo.ammo = prev_ammo
        self:RemoveModifiers("ammo")
        if(self.ammo) then
            for _, mod in ipairs(self.ammo.Modifications) do
                self:AddModifier("ammo", mod.target_prop, mod.mod_mul, mod.mod_add)
            end
        end
        ObjModified(self)
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