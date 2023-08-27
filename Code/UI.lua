function SpawnInventoryActionsSecondaryPopup(actionButton, action)
    local node = actionButton:ResolveId("node")
    local context = node.context
    --print(context)
    context.action = action
    node = node.parent
    if node.spawned_subpopup then
      node.spawned_subpopup:Close()
    end
    --actionButton:SetSelected(true)
    local popup = XTemplateSpawn("InventoryContextSubMenu", terminal.desktop, context)
    popup:SetAnchorType("right")
    popup:SetAnchor(actionButton.box)
    popup.popup_parent = node
    node.spawned_subpopup = popup
    popup:Open()
  end