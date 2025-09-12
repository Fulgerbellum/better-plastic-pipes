  local path = '__better-plastic-pipes__'
  require("__base__/prototypes/item_sounds")
  local colors = require("__better-plastic-pipes__/prototypes/myriadrainbowcolors")

  data:extend
  ({
    {
        type = "item",
        name = "plastic-pipe",
        icon = path.."/graphics/icon/pipe.png",
        subgroup = "energy-pipe-distribution",
        order = "a[pipe]-b[plastic]",
        inventory_move_sound = plastic_inventory_move,
        pick_sound = plastic_inventory_pickup,
        drop_sound = plastic_inventory_move,
        place_result = "plastic-pipe",
        stack_size = 100,
        weight = 2 * kg
    },
    {
      type = "item",
      name = "plastic-pipe-to-ground",
      icon = path.."/graphics/icon/pipe-to-ground.png",
      subgroup = "energy-pipe-distribution",
      order = "a[pipe]-cb[pipe-to-ground]-cc[plastic]",
      inventory_move_sound = plastic_inventory_move,
      pick_sound = plastic_inventory_pickup,
      drop_sound = plastic_inventory_move,
      place_result = "plastic-pipe-to-ground",
      stack_size = 100,
      weight = 3 * kg
    },
    {
      type = "item",
      name = "plastic-pressure-vessel",
      icon = path.."/graphics/icon/FP-Fillbarrel.png",
      subgroup = "intermediate-product",
      order = "a[basic-intermediates]-d[plastic-barrel]",
      inventory_move_sound = plastic_inventory_move,
      pick_sound = plastic_inventory_pickup,
      drop_sound = plastic_inventory_move,
      stack_size = 10,
      weight = 1 * kg

    },
    {
    type = "item",
    name = "plasticized-pump",
    icon = path.."/graphics/icon/pump.png",
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-b[plastic]-c[pump]",
    inventory_move_sound = plastic_inventory_move,
    pick_sound = plastic_inventory_pickup,
    drop_sound = plastic_inventory_move,
    place_result = "plasticized-pump",
    stack_size = 50,
    },
  })