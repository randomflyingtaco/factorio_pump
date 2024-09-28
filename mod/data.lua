-- data.lua
local pumpSelectionTool = table.deepcopy(data.raw["selection-tool"]["selection-tool"])

pumpSelectionTool.name = "pump-selection-tool"
pumpSelectionTool.icon = "__pump__/graphics/icons/pump_icon_32.png"
pumpSelectionTool.icon_size = 32
pumpSelectionTool.flags = {"only-in-cursor", "spawnable", "not-stackable"}
pumpSelectionTool.subgroup = "tool"
pumpSelectionTool.order = "c[automated-construction]-d[pump-selection-tool]"
pumpSelectionTool.select.cursor_box_type = "entity"
pumpSelectionTool.select.mode = "any-entity"
pumpSelectionTool.select.entity_filter_mode = "whitelist"
pumpSelectionTool.select.entity_filter = {"crude-oil"}

-- no different ALT-behavior. Just copy it from the regular behavior
pumpSelectionTool.alt_select = pumpSelectionTool.select

local pumpShortcut = table.deepcopy(data.raw["shortcut"]["give-blueprint"])
pumpShortcut.name = "pump-shortcut"
pumpShortcut.technology_to_unlock = nil
pumpShortcut.localised_name = nil
pumpShortcut.associated_control_input = "pump-selection-tool-toggle"
pumpShortcut.item_to_spawn = "pump-selection-tool"
pumpShortcut.style = "default"
pumpShortcut.icon = "__pump__/graphics/icons/pump_icon_32.png"
pumpShortcut.icon_size = 32
pumpShortcut.icon = "__pump__/graphics/icons/pump_icon_24.png"
pumpShortcut.icon_size = 24

data:extend{pumpSelectionTool, pumpShortcut}

data:extend{
    {
        type = "custom-input",
        name = "pump-selection-tool-toggle",
        key_sequence = "CONTROL + SHIFT + P",
    },
}
