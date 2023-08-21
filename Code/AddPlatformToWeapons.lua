FirearmProperties.properties.Platform = { 
    category = "Caliber", 
    id = "Platform", 
    editor = "combo", 
    default = false, 
    template = true, 
    items = function (self) return {
    "MP5",
    "AR15",
    "FAMAS",
    'AK762',
    'AK545',
    "AUG",
    "M14",
    "GALIL",
    "FNFAL",
    "UZI",
    "MP40",
    "SVD",
    "HK21",
    "SAW",
    'HiPower',
    "Beretta",
    "Glock",
    "DesertEagle"
  } end, 
}

function SetWeaponPlatform()
    HiPower.Platform = "HiPower"
    Bereta92.Platform = "Beretta"
    Glock18.Platform = "Glock"
    DesertEagle.Platform = "DesertEagle"

    UZI.Platform = "UZI"
    MP5.Platform = "MP5"
    MP5K.Platform = "MP5K"
    MP40.Platform = "MP40"
    AKSU.Platform = "AK545"

    AK74.Platform = "AK762"
    AK47.Platform = "AK762"
    FAMAS.Platform = "FAMAS"
    AR15.Platform = "AR15"
    M16A2.Platform = "AR15"
    AUG.Platform = "AUG"
    FNFAL.Platform = "FNFAL"
    GALIL.Platform = "Galil"
    G36.Platform = "AR15"

    M14SAW.Platform = "M14"
    M24Sniper.Platform = "M14"
    PSG1.Platform = "M14"

    RPK74.Platform = "AK762"
    HK21.Platform = "HK21"
    FNMinimi.Platform = "SAW"
end

SetWeaponPlatform()



function OnMsg.UnitStanceChanged(unit)
    local weapon1, weapon2 = unit:GetActiveWeapons()
    print(weapon1.Platform)
end

