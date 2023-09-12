function OnMsg.ApplyModOptions()
    RevisedMagConfigValues.MagBaseReloadAP = tonumber(CurrentModOptions['RevisedMagBaseReloadAP']) * 1000
    RevisedMagConfigValues.NonMagReloadAP = tonumber(CurrentModOptions['RevisedNonMagReloadAP']) * 1000
    RevisedMagConfigValues.MagDropChance = tonumber(CurrentModOptions['RevisedMagDropChance'])
end

