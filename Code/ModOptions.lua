function OnMsg.ApplyModOptions(mod_id)
	if mod_id == CurrentModId and CurrentModOptions then
		RevisedMagConfigValues.MagBaseReloadAP = tonumber(CurrentModOptions['RevisedMagBaseReloadAP']) * 1000
		RevisedMagConfigValues.NonMagReloadAP = tonumber(CurrentModOptions['RevisedNonMagReloadAP']) * 1000
		RevisedMagConfigValues.MagDropChance = tonumber(CurrentModOptions['RevisedMagDropChance'])
	end
end
