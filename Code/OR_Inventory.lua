local REV_Original_PlaceInventoryItem = PlaceInventoryItem

function PlaceInventoryItem(item_id, instance, ...)
	local obj = REV_Original_PlaceInventoryItem(item_id, instance, ...)

	if obj and IsKindOf(obj, "Firearm") then
		local magazine = obj.Magazine or obj.Platform and
			REV_GetMagazineClassByPlatformAndModification(obj.Platform, obj.components.Magazine or 'MagNormal', true)

		if magazine then
			obj.magazine = obj.magazine or PlaceInventoryItem(magazine)
			obj.magazine.ammo = obj.magazine.ammo or obj.ammo
		end
	end

	return obj
end
