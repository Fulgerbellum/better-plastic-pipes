  local path = '__better-plastic-pipes__'
  local sounds = require("__base__/prototypes/entity/sounds")
  local hit_effects = require("__base__/prototypes/entity/hit-effects")
  local pipeFX = require("__better-plastic-pipes__.prototypes.pipefunctions")
  local spaced_out = mods["space-age"] ~= nil
  local colors = require("__better-plastic-pipes__.prototypes.myriadrainbowcolors")

  local function if_spacedout(yeaj, nah)
    if spaced_out then
        return yeaj
    else
        return nah
    end
end

data:extend({
    {
        type = "pipe",
        name = "plastic-pipe",
        icon = path.."/graphics/icon/pipe.png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "plastic-pipe"},
        max_health = 50,
        corpse = "plastic-pipe-remnants",
        dying_explosion = "pipe-explosion",
        icon_draw_specification = {scale = 0.5},
        resistances = 
        {
            {
                type = "fire",
                percent = -50
            },
            {
                type = "impact",
                percent = -20
            },
            {
                type = "physical",
                percent = -50
            },
            {
                type = "acid",
                percent = 95
            }
    
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box =
        {
            volume = 100,
            pipe_covers = pipeFX.FPpipecovers(),
            pipe_connections =
            {
                { direction = defines.direction.north, position = {0, 0} },
                { direction = defines.direction.east, position = {0, 0} },
                { direction = defines.direction.south, position = {0, 0} },
                { direction = defines.direction.west, position = {0, 0} }
            },
            hide_connection_info = true
        },
        heating_energy = if_spacedout("1kW", nil),
        vehicle_impact_sound = pipeFX.FPcrash(),
        pictures = pipeFX.FPpipepictures(),
        working_sound = sounds.pipe,
        open_sound = {path.."/sound/plastic-open.ogg"},
        close_sound = {path.."/sound/plastic-close.ogg"},

        horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.28125}},
        vertical_window_bounding_box = {{-0.078125, -0.28125}, {0.078125,  0.0}}

    },
    {
        type = "pipe-to-ground",
        name = "plastic-pipe-to-ground",
        icon = path.."/graphics/icon/pipe-to-ground.png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "plastic-pipe-to-ground"},
        max_health = 50,
        corpse = "plastic-pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        icon_draw_specification = {scale = 0.5},
        resistances = 
        {
            {
                type = "fire",
                percent = -50
            },
            {
                type = "impact",
                percent = -20
            },
            {
                type = "physical",
                percent = -50
            },
            {
                type = "acid",
                percent = 95
            }
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box =
        {
            volume = 100,
            pipe_covers = pipeFX.FPpipecovers(),
            pipe_connections =
            {
                { direction = defines.direction.north, position = {0, 0}},
                {
                    connection_type = "underground",
                    direction = defines.direction.south,
                    position = {0, 0},
                    max_underground_distance = 15
                }
            },
            hide_connection_info = true
        },
        heating_energy = if_spacedout("150kW", nil),
        vehicle_impact_sound = pipeFX.FPcrash(),
        pictures = pipeFX.FPptg(),
        visualization = data.raw["pipe-to-ground"]["pipe-to-ground"].visualization,
        disabled_visualization = data.raw["pipe-to-ground"]["pipe-to-ground"].disabled_visualization,
        working_sound = sounds.pipe,
        open_sound = path.."/sound/plastic-open.ogg",
        close_sound = path.."/sound/plastic-close.ogg",
    },
(function()
    local FPpump = table.deepcopy(data.raw["pump"]["pump"])
    FPpump.name = "plasticized-pump"
    FPpump.icon = "__better-plastic-pipes__/graphics/icon/pump.png"
    FPpump.icon_size = 64
    FPpump.minable.result = "plasticized-pump"
    FPpump.resistances = {
        {type = "fire", percent = -30},
        {type = "impact", percent = -20},
        {type = "acid", percent = 90},
        {type = "physical", percent = -10}
    }
    FPpump.animations = pipeFX.FPpumppictures()
    FPpump.vehicle_impact_sound = pipeFX.FPcrash()

    return FPpump
end)(),
    
    {
        type = "corpse",
        name = "plastic-pipe-remnants",
        icon = path.."/graphics/entity/pipe/remnants/remnants.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "energy-pipe-distribution-remnants",
        order = "a-d-a",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false, 
        time_before_removed = 60 * 60 * 15,
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = 
        {
            filename = path.."/graphics/entity/pipe/remnants/remnants.png",
            width = 122,
            height = 120,
            line_length = 1,
            direction_count = 2,
            shift = util.by_pixel(1.5, 2.5),
            scale = 0.5
        }
    },
    {
        type = "corpse",
        name = "plastic-pipe-to-ground-remnants",
        icon = path.."/graphics/entity/pipe-to-ground/remnants/remnants.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "energy-pipe-distribution-remnants",
        order = "a-d-a",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false, 
        time_before_removed = 60 * 60 * 15,
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = 
        {
            filename = path.."/graphics/entity/pipe-to-ground/remnants/remnants.png",
            width = 90,
            height = 80,
            line_length = 1,
            direction_count = 1,
            shift = util.by_pixel(0.5, -3),
            scale = 0.5
        }
    },
})