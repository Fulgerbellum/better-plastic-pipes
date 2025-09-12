local mode = (settings.startup["usage-mode"] or {value="standalone"}).value
if mode == "standalone" and not mods["call-a-plumber"] then
    require("__better-plastic-pipes__.prototypes.entity")
    require("__better-plastic-pipes__.prototypes.item")
    require("__better-plastic-pipes__.prototypes.recipe")
end

if mode == "cap_reskin" then
    require("__better-plastic-pipes__.prototypes.cap_reskin")
end

require("__better-plastic-pipes__.prototypes.entity_frozen")