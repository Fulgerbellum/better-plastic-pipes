local colordefs = require("__better-plastic-pipes__.prototypes.myriadrainbowcolors")
local settings = {}
for color_name, _ in pairs(colordefs.auxiliary_colors) do
    table.insert(settings, {
        type = "bool-setting",
        name = "enable-color-"..color_name,
        setting_type = "startup",
        default_value = false,
        order = "color-"..color_name
    })
end
data:extend(settings)
data:extend({
    {
        type = "string-setting",
        name = "usage-mode",
        setting_type = "startup",
        default_value = "standalone",
        allowed_values = { "standalone", "cap_reskin", "cap_rebalance" },
        order = "a"
    },
    {
        type = "bool-setting",
        name = "colorize-pipes",
        setting_type = "startup",
        default_value = false,
        order = "b"
    },
    {
        type = "bool-setting",
        name = "flow-control",
        setting_type = "startup",
        default_value = false,
        order = "c"
    },
    {
        type = "bool-setting",
        name = "pipe-plus",
        setting_type = "startup",
        default_value = false,
        order = "d"
    },
    {
        type = "bool-setting",
        name = "fp-colored-usefullrecipe",
        setting_type = "startup",
        default_value = false,
        order = "e"
    }


})