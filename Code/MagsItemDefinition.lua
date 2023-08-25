UndefineClass("Mag")
DefineClass.Mag = {
    __parents = {
      "InventoryItem"
    },
    properties = {
      {
        id = "Platform",
        category = "Caliber",
        template = true,
        default = 'AR15',
        editor = "combo",
        items = function(self)
            return {
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
            }
          end
      },
      {
        category = "Caliber",
        id = "MagazineSize",
        name = "Magazine Size",
        help = "Number of bullets in a single clip",
        editor = "number",
        default = 30,
        template = true,
        min = 1,
        max = 500,
        modifiable = true
      },
      {
        category = "Caliber",
        id = "Caliber",
        editor = "combo",
        default = false,
        template = true,
        items = function(self)
          return {
            "44CAL",
            "545x39",
            "762x54R",
            "9mm",
            "50BMG",
            "556",
            "762WP",
            "762NATO",
            "12gauge"
          }
        end
      },
    },
    ammo = {},
    MaxStacks=2
}

function FirearmBase:GetSpecialScrapItems()
  local special_components = {}
  if self.Magazine then
    g_Units[self.owner]:AddItem("Inventory", PlaceInventoryItem(self.Magazine))
  end
  for _, component in sorted_pairs(self.components or empty_table) do
    local comp = WeaponComponents[component]
    if comp then
      for _, costs in ipairs(comp.AdditionalCosts) do
        local idx = table.find(special_components, "restype", costs.Type)
        if idx then
          special_components[idx].amount = (special_components[idx].amount or 0) + costs.Amount
        else
          table.insert(special_components, {
            restype = costs.Type,
            amount = costs.Amount
          })
        end
      end
    end
  end
  return special_components
end

