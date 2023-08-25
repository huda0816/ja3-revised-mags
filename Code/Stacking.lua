UndefineClass('InventoryStack')
DefineClass.InventoryStack = {
    __parents = {
      "InventoryItem"
    },
    properties = {
      {
        id = "Amount",
        editor = "number",
        default = 1
      },
      {
        id = "MaxStacks",
        template = true,
        editor = "number",
        default = 10
      },
      {
        id = "Unique",
        template = true,
        editor = "toggle",
      }
    }
}