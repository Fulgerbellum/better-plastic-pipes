local pipeFX = require("__better-plastic-pipes__.prototypes.pipefunctions")

local function reskin_pipe(target, base_func, frozen_func, color_func)
    if not target then return end

    if mods["space-age"] then
        if mods["color-coded-pipes"] or settings.startup["colorize-pipes"].value then
            target.pictures = frozen_func(color_func())
        else
            target.pictures = frozen_func()
        end
    else
        if mods["color-coded-pipes"] or settings.startup["colorize-pipes"].value then
            target.pictures = color_func()
        else
            target.pictures = base_func()
        end
    end
end

reskin_pipe(
    data.raw["pipe"]["plastic-pipe"],
    pipeFX.FPpipepictures,
    pipeFX.FPpipefrozen,
    pipeFX.FPcolors
)
reskin_pipe(
    data.raw["pipe-to-ground"]["plastic-pipe-to-ground"],
    pipeFX.FPptg,
    pipeFX.FPptgfrozen,
    pipeFX.FPcolors
)