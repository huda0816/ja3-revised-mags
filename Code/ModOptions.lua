function OnMsg.ApplyModOptions()
    RevisedMagConfigValues.MagBaseReloadAP = CurrentModOptions['RevisedMagBaseReloadAP'] * 1000
    RevisedMagConfigValues.NonMagReloadAP = CurrentModOptions['RevisedNonMagReloadAP'] * 1000
end

