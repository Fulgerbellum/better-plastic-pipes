if data.raw.recipe["plastic-pipe-to-ground"] then
table.insert(
    data.raw["technology"]["plastics"].effects, 1,
    {type = "unlock-recipe", recipe = "plastic-pipe-to-ground"}
)
table.insert(
    data.raw["technology"]["plastics"].effects, 2,
    {type = "unlock-recipe", recipe = "plastic-pipe"}
)
end

if data.raw.recipe["plastic-pressure-vessel"] then
table.insert(
    data.raw["technology"]["tungsten-steel"].effects, 1,
    {type = "unlock-recipe", recipe = "plastic-pressure-vessel"}
)
end

if data.raw.recipe["plasticized-pump"] then
table.insert(
    data.raw["technology"]["fluid-handling"].effects, 1,
    {type = "unlock-recipe", recipe = "plasticized-pump"}
)
end

local pipeFX = require("__better-plastic-pipes__.prototypes.pipefunctions")
local colordefs = require("__better-plastic-pipes__.prototypes.myriadrainbowcolors")

local colors = colordefs.colors
local subgroup_name = "energy-pipe-distribution"
if data.raw["item-subgroup"]["color-coded-pipes"] then
    subgroup_name = "color-coded-pipes"
end

for color_name, color_data in pairs(colors) do
    local setting_name = "enable-color-"..color_name
    local setting = settings.startup[setting_name]
    if (setting == nil) or (setting.value == true) then

        --Pipe--
    local pipe_name = color_name.."-plastic-pipe"
    local newpipe = table.deepcopy(data.raw["pipe"]["plastic-pipe"])
    newpipe.name = pipe_name
    local tint = color_data.tint
    newpipe.pictures = pipeFX.FPcolors(tint)
    newpipe.minable.result = pipe_name
    data:extend({ newpipe })

    local newpipe_item = {
        type = "item",
        name = pipe_name,
        place_result = pipe_name,
        stack_size = 100,
        subgroup = subgroup_name,
        order = "a[pipe]-"..color_name,
        icons = pipeFX.FPiconcolors(tint)
    }
    data:extend({ newpipe_item })

    local piperecipe_ingredients
    if settings.startup["fp-colored-usefullrecipe"].value == "full" then
        piperecipe_ingredients = {
            { type = "item", name = "plastic-bar", amount = 4},
            { type = "item", name = "iron-plate", amount = 1}
        }
    else
        piperecipe_ingredients = {
            {type = "item", name = "plastic-pipe", amount = 1}
        }
    end

    local newpipe_recipe = {
        type = "recipe",
        name = pipe_name,
        results = {
            {type = "item", name = pipe_name, amount = 1}
        },
        energy_required = 0.5,
        enabled = true,
        ingredients = piperecipe_ingredients
    }
    data:extend({ newpipe_recipe })

    --pipe 2 ground--
    local ptg_name = color_name.."-plastic-pipe-to-ground"
    local newptg = table.deepcopy(data.raw["pipe-to-ground"]["plastic-pipe-to-ground"])
    newptg.name = ptg_name
    newptg.pictures = pipeFX.FPugcolors(tint)
    newptg.minable.result = ptg_name
    data:extend({ newptg })

    local newptg_item = {
        type = "item",
        name = ptg_name,
        place_result = ptg_name,
        stack_size = 50,
        subgroup = subgroup_name,
        order = "b[pipe-to-ground]-"..color_name,
        icons = pipeFX.FPptgiconcolors(tint)
    }
    data:extend({ newptg_item })

    local ptgrecipe_ingredients
    if settings.startup["fp-colored-usefullrecipe"].value == "full" then
        ptgrecipe_ingredients = {
            { type = "item", name = "plastic-pipe", amount = 10},
            { type = "item", name = "iron-plate", amount = 5}
        }
    else
        ptgrecipe_ingredients = {
            {type = "item", name = "plastic-pipe-to-ground", amount = 1}
        }
    end

    local newptg_recipe = {
        type = "recipe",
        name = ptg_name,
        results = {
            { type = "item", name = ptg_name, amount = 1 }
        },
        energy_required = 0.5,
        enabled = true,
        ingredients = ptgrecipe_ingredients
    }
    data:extend({ newptg_recipe })

    --Poomp--
    local pump_name = color_name.."-plasticized-pump"
    local newpump = table.deepcopy(data.raw["pump"]["plasticized-pump"])
    newpump.name = pump_name
    newpump.animations = pipeFX.FPpumpcolors(tint)
    newpump.minable.result = pump_name
    data:extend({ newpump })

    local newpump_item = {
        type = "item",
        name = pump_name,
        place_result = pump_name,
        stack_size = 20,
        subgroup = subgroup_name,
        order = "a[plastic]-b[pump]-"..color_name,
        icons = pipeFX.FPpumpiconcolors(tint)
    }
    data:extend({ newpump_item })

    local pumprecipe_ingredients
    if settings.startup["fp-colored-usefullrecipe"].value == "full" then
        pumprecipe_ingredients = {
            {type = "item", name = "pump", amount = 1},
            {type = "item", name = "plastic-bar", amount = 6}
        }
    else
        pumprecipe_ingredients = {
            {type = "item", name = "plasticized-pump", amount = 1}
        }
    end

    local newpump_recipe = {
        type = "recipe",
        name = pump_name,
        results = {
            { type = "item", name = pump_name, amount = 1 }
        },
        energy_required = 0.5,
        enabled = true,
        ingredients = pumprecipe_ingredients
    }
    data:extend({ newpump_recipe })
    end
end

local pipefunctions = require("__better-plastic-pipes__.prototypes.pipefunctions")
if mods["space-age"] then

local standalone_pipe = data.raw["pipe"]["plastic-pipe"]
local standalone_ptg = data.raw["pipe-to-ground"]["plastic-pipe-to-ground"]

if standalone_pipe then
    for name, sprite in pairs(pipefunctions.FPpipefrozen()) do
        standalone_pipe.pictures[name.."_frozen"] = sprite
    end
    standalone_pipe.fluid_box.pipe_covers_frozen = pipefunctions.FPcoversfrozen()
end

if standalone_ptg then
    for name, sprite in pairs(pipefunctions.FPptgfrozen()) do
        standalone_ptg.pictures[name.."_frozen"] = sprite
    end
    standalone_ptg.fluid_box.pipe_covers_frozen = pipefunctions.FPcoversfrozen()
end

for color_name, _ in pairs(colordefs.colors) do
    local pipe = data.raw["pipe"][color_name.."plastic-pipe"]
    local ptg = data.raw["pipe-to-ground"][color_name.."plastic-pipe-to-ground"]

    if pipe then
        for name, sprite in pairs(pipefunctions.FPpipefrozen()) do
            pipe.pictures[name.."_frozen"] = sprite
        end
        pipe.fluid_box.pipe_covers_frozen = pipefunctions.FPcoversfrozen()
    end

    if ptg then
        for name, sprite in pairs(pipefunctions.FPptgfrozen()) do
            ptg.pictures[name.."_frozen"] = sprite
        end
        ptg.fluid_box.pipe_covers_frozen = pipefunctions.FPcoversfrozen()
        end
    end
end
