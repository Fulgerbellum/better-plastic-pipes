local util = require("util")
local path = "__better-plastic-pipes__"

local FPcrash = function()
    return {
            { filename = path.."sound/car-plastic-impact-1.ogg", volume = 0.65},
            { filename = path.."sound/car-plastic-impact-2.ogg", volume = 0.65},
            { filename = path.."sound/car-plastic-impact-3.ogg", volume = 0.65},
            { filename = path.."sound/car-plastic-impact-4.ogg", volume = 0.65},
            { filename = path.."sound/car-plastic-impact-5.ogg", volume = 0.65},
            { filename = path.."sound/car-plastic-impact-6.ogg", volume = 0.65}
    }
end

local FPpumppictures = function()
    return {
        north =
            {
            filename = path.."/graphics/entity/pump/pump-north.png",
            width = 103,
            height = 164,
            scale = 0.5,
            line_length =8,
            frame_count =32,
            animation_speed = 0.5,
            shift = util.by_pixel(8, -0.85)
            },
        east =
            {
            filename = path.."/graphics/entity/pump/pump-east.png",
            width = 130,
            height = 109,
            scale = 0.5,
            line_length =8,
            frame_count =32,
            animation_speed = 0.5,
            shift = util.by_pixel(-0.5, 1.75)
            },

        south =
            {
            filename = path.."/graphics/entity/pump/pump-south.png",
            width = 114,
            height = 160,
            scale = 0.5,
            line_length =8,
            frame_count =32,
            animation_speed = 0.5,
            shift = util.by_pixel(12.5, -8)
        },
        west =
            {
            filename = path.."/graphics/entity/pump/pump-west.png",
            width = 131,
            height = 111,
            scale = 0.5,
            line_length =8,
            frame_count =32,
            animation_speed = 0.5,
            shift = util.by_pixel(-0.25, 1.25)
            }
    }
end
local FPpipecovers = function()
    return {
        north = 
        {
            layers = 
            {
                {
                    filename = path.."/graphics/entity/pipe-covers/pipe-cover-north.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        },
        east = 
        {
            layers = 
            {
                {
                    filename = path.."/graphics/entity/pipe-covers/pipe-cover-east.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        },
        south = 
        {
            layers = 
            {
                {
                    filename = path.."/graphics/entity/pipe-covers/pipe-cover-south.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        },
        west = 
        {
            layers = 
            {
                {
                    filename = path.."/graphics/entity/pipe-covers/pipe-cover-west.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        }
    }
end
local FPptg = function()
    return
        {
            north =
            {
                filename = path.."/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                shift = util.by_pixel(0,-20),
                scale = 0.5
            },
            south = 
            {
                filename = path.."/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                shift = util.by_pixel(0,-20),
                scale = 0.5
            },
            west =
            {
                filename = path.."/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                shift = util.by_pixel(0,-20),
                scale = 0.5
            },
            east =
            {
                filename = path.."/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                shift = util.by_pixel(0,-20),
                scale = 0.5
            },
        }
end
local FPpipepictures = function()
    return
    {
        straight_vertical_single = 
        {
            filename = path.."/graphics/entity/pipe/pipe-straight-vertical-single.png",
            priority = "extra-high",
            width = 160,
            height = 160,
            scale = 0.5
        },
        straight_vertical = 
        {
            filename = path.."/graphics/entity/pipe/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_vertical_window = 
        {
            filename = path.."/graphics/entity/pipe/pipe-straight-vertical-window.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_horizontal_window = 
        {
            filename = path.."/graphics/entity/pipe/pipe-straight-horizontal-window.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_horizontal = 
        {
            filename = path.."/graphics/entity/pipe/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_up_right = 
        {
            filename = path.."/graphics/entity/pipe/pipe-corner-up-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_up_left = 
        {
            filename = path.."/graphics/entity/pipe/pipe-corner-up-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_down_right = 
        {
            filename = path.."/graphics/entity/pipe/pipe-corner-down-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_down_left = 
        {
            filename = path.."/graphics/entity/pipe/pipe-corner-down-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_up = 
        {
            filename = path.."/graphics/entity/pipe/pipe-t-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_down = 
        {
            filename = path.."/graphics/entity/pipe/pipe-t-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_right = 
        {
            filename = path.."/graphics/entity/pipe/pipe-t-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_left = 
        {
            filename = path.."/graphics/entity/pipe/pipe-t-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        cross = 
        {
            filename = path.."/graphics/entity/pipe/pipe-cross.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_up = 
        {
            filename = path.."/graphics/entity/pipe/pipe-ending-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_down = 
        {
            filename = path.."/graphics/entity/pipe/pipe-ending-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_right = 
        {
            filename = path.."/graphics/entity/pipe/pipe-ending-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_left = 
        {
            filename = path.."/graphics/entity/pipe/pipe-ending-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        horizontal_window_background =
        {
        filename = path.."/graphics/entity/pipe/pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
        },
        vertical_window_background =
        {
        filename = path.."/graphics/entity/pipe/pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
        },
        fluid_background =
        {
        filename = "__base__/graphics/entity/pipe/fluid-background.png",
        priority = "extra-high",
        width = 64,
        height = 40,
        scale = 0.5
        },
        low_temperature_flow =
        {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
        },
        middle_temperature_flow =
        {
        filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
        },
        high_temperature_flow =
        {
        filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
        },
        gas_flow =
        {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60
        }
    }
end
local FPugcolors = function (tint)
    return
    {
        north = {
            layers = {
                {
                filename = path.."/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe-to-ground/overlay/pipe-to-ground-up.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        south = {
            layers = {
                {
                filename = path.."/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe-to-ground/overlay/pipe-to-ground-down.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        west = {
            layers = {
                {
                filename = path.."/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe-to-ground/overlay/pipe-to-ground-left.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        east = {
            layers = {
                {
                filename = path.."/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe-to-ground/overlay/pipe-to-ground-right.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        }
    }
end
local FPpumpcolors = function (tint)
    return
    {
        north = {
            layers = {
              {
                    filename = path.."/graphics/entity/pump/pump-north.png",
                    priority = "extra-high",
                    width = 103,
                    height = 164
                },
                {
                    filename = path.."/graphics/entity/pump/overlay/pump-north.png",
                    priority = "extra-high",
                    width = 103,
                    height = 164,
                    tint = tint
                }
            }
        },
        east = {
            layers = {
                {
                    filename = path.."/graphics/entity/pump/pump-east.png",
                    priority = "extra-high",
                    width = 130,
                    height = 109
                },
                {
                    filename = path.."/graphics/entity/pump/overlay/pump-east.png",
                    priority = "extra-high",
                    width = 130,
                    height = 109,
                    tint = tint
                }
            }
        },
        south = {
            layers = {
                {
                    filename = path.."/graphics/entity/pump/pump-south.png",
                    priority = "extra-high",
                    width = 114,
                    height = 160
                },
                {
                    filename = path.."/graphics/entity/pump/overlay/pump-south.png",
                    priority = "extra-high",
                    width = 114,
                    height = 160,
                    tint = tint
                }
            }
        },
        west = {
            layers = {
                {
                    filename = path.."/graphics/entity/pump/pump-west.png",
                    priority = "extra-high",
                    width = 131,
                    height = 111
                },
                {
                    filename = path.."/graphics/entity/pump/overlay/pump-west.png",
                    priority = "extra-high",
                    width = 131,
                    height = 111,
                    tint = tint
                }
            }
        }
    }
end
local FPcolors = function (tint)
    return
    {
        straight_vertical_single = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-straight-vertical-single.png",
                    priority = "extra-high",
                    width = 160,
                    height = 160,
                scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-straight-vertical-single.png",
                    priority = "extra-high",
                    width = 160,
                    height = 160,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        straight_vertical = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-straight-vertical.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-straight-vertical.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        straight_vertical_window = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-straight-vertical-window.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-straight-vertical-window.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        straight_horizontal_window = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-straight-horizontal-window.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-straight-horizontal-window.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        straight_horizontal = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-straight-horizontal.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-straight-horizontal.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        corner_up_right = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-corner-up-right.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-corner-up-right.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        corner_up_left = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-corner-up-left.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-corner-up-left.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        corner_down_right = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-corner-down-right.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-corner-down-right.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        corner_down_left = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-corner-down-left.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-corner-down-left.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        t_up = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-t-up.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-t-up.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        t_down = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-t-down.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-t-down.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        t_right = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-t-right.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-t-right.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        t_left = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-t-left.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-t-left.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        cross = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-cross.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-cross.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        ending_up = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-ending-up.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-ending-up.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        ending_down = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-ending-down.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-ending-down.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        ending_right = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-ending-right.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-ending-right.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        ending_left = {
            layers = {
                {
                    filename = path.."/graphics/entity/pipe/pipe-ending-left.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = path.."/graphics/entity/pipe/overlay/pipe-ending-left.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    tint = tint
                }
            }
        },
        horizontal_window_background =
                {
                filename = path.."/graphics/entity/pipe/pipe-horizontal-window-background.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
                },
        vertical_window_background =
                {
                filename = path.."/graphics/entity/pipe/pipe-vertical-window-background.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                scale = 0.5
                },
        fluid_background =
                {
                filename = "__base__/graphics/entity/pipe/fluid-background.png",
                priority = "extra-high",
                width = 64,
                height = 40,
                scale = 0.5
                },
        low_temperature_flow =
                {
                filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 18
                },
        middle_temperature_flow =
                {
                filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 18
                },
        high_temperature_flow =
                {
                filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 18
                },
        gas_flow =
                {
                filename = "__base__/graphics/entity/pipe/steam.png",
                priority = "extra-high",
                line_length = 10,
                width = 48,
                height = 30,
                frame_count = 60
                }
    }
end

local FPcoversfrozen = function ()
    local base_covers = FPpipecovers()
    for _, property in pairs ({"north", "south", "west", "east"}) do
        local frozen_property = property .. "_frozen"
        base_covers[frozen_property] = table.deepcopy(base_covers[property])
        for _, layer in ipairs(base_covers[frozen_property].layers) do
            layer.filename = layer.filename:gsub(
                                                "__better%-plastic%-pipes__/graphics/entity/pipe%-covers",
                                                "__better%%-plastic%%-pipes__/graphics/entity/pipe%%-covers/frozen")
        end
    end
    return base_covers
end
local FPptgfrozen = function ()
        local base_ptg = FPptg()
        for _, property in pairs ({"north", "south", "west", "east"}) do
            local frozen_property = property .. "_frozen"
            base_ptg[frozen_property] = table.deepcopy(base_ptg[property])
            base_ptg[frozen_property].filename = base_ptg[frozen_property].filename:gsub(
                                                "__better%-plastic%-pipes__/graphics/entity/pipe",
                                                "__better%%-plastic%%-pipes__/graphics/entity/pipe/frozen")
  end
  return base_ptg
end
local FPpipefrozen = function()
        local base_sprite = FPpipepictures()
        for _, property in pairs({"straight_vertical_single", "straight_vertical", "straight_vertical_window", "straight_horizontal",
        "straight_horizontal_window", "corner_up_right", "corner_up_left", "corner_down_right", "corner_down_left", "t_up", "t_down",
        "t_right", "t_left", "cross", "ending_up", "ending_down", "ending_right", "ending_left"}) do
            local frozen_property = property .. "_frozen"
            base_sprite[frozen_property] = table.deepcopy(base_sprite[property])
            base_sprite[frozen_property].filename = base_sprite[frozen_property].filename:gsub(
                                                "__better%-plastic%-pipes__/graphics/entity/pipe",
                                                "__better%%-plastic%%-pipes__/graphics/entity/pipe/frozen")
    end
    return base_sprite
end
local FPpipeiconcolors = function (tint)
    return {
        {
            icon = "__better-plastic-pipes__/graphics/icon/pipe.png",
            icon_size = 64,
            icon_mipmaps = 4
        },
        {
            icon = "__better-plastic-pipes__/graphics/icon/overlay/pipe.png",
            icon_size = 64,
            icon_mipmaps = 4,
            tint = tint
        }
    }
end
local FPptgiconcolors = function (tint)
    return {
        {
            icon = "__better-plastic-pipes__/graphics/icon/pipe-to-ground.png",
            icon_size = 64,
            icon_mipmaps = 4
        },
        {
            icon = "__better-plastic-pipes__/graphics/icon/overlay/pipe-to-ground.png",
            icon_size = 64,
            icon_mipmaps = 4,
            tint = tint
        }
    }
end
local FPpumpiconcolors = function (tint)
    return {
        {
            icon = "__better-plastic-pipes__/graphics/icon/pump.png",
            icon_size = 64,
            icon_mipmaps = 4
        },
        {
            icon = "__better-plastic-pipes__/graphics/icon/overlay/pump.png",
            icon_size = 64,
            icon_mipmaps = 4,
            tint = tint
        }
    }
end
return {
    FPpipepictures = FPpipepictures,
    FPpipecovers = FPpipecovers,
    FPptg = FPptg,
    FPcrash = FPcrash,
    FPcoversfrozen = FPcoversfrozen,
    FPptgfrozen = FPptgfrozen,
    FPpipefrozen = FPpipefrozen,
    FPpumppictures = FPpumppictures,
    FPcolors = FPcolors,
    FPugcolors = FPugcolors,
    FPpumpcolors = FPpumpcolors,
    FPiconcolors = FPpipeiconcolors,
    FPptgiconcolors = FPptgiconcolors,
    FPpumpiconcolors = FPpumpiconcolors
}