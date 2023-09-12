function OnMsg.UnitDied(unit)
    if unit then
        if unit:Random(100) < tonumber(CurrentModOptions['RevisedMagDropChance']) then
            local weapon = unit:GetActiveWeapons()
            if weapon.Magazine then
                local mag  = PlaceInventoryItem(weapon.Magazine)
                unit:AddItem("InventoryDead", mag)
            end
        end
    end
end