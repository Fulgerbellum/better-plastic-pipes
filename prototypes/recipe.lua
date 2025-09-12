local usefullrecipe = settings.startup["fp-colored-usefullrecipe"].value

data:extend({
    {
        type = "recipe",
        name = "plastic-pipe",
        enabled = false,
        subgroup = "energy-pipe-distribution",
        ingredients = {
            {type = "item", name = "plastic-bar", amount = 4},
            {type = "item", name = "iron-plate", amount = 1},
        },
        energy_required = 2,
        results = {{type = "item", name = "plastic-pipe", amount = 1}}
    },
    {
        type = "recipe",
        name = "plastic-pipe-to-ground",
        enabled = false,
        subgroup = "energy-pipe-distribution",
        ingredients = {
            {type = "item", name = "plastic-pipe", amount = 10},
            {type = "item", name = "iron-plate", amount = 5},
        },
        results = {{type = "item", name = "plastic-pipe-to-ground", amount = 2}},
    },
    {
        type = "recipe",
        name = "plastic-pressure-vessel",
        enabled = false,
        subgroup = "energy-pipe-distribution",
        ingredients = {
            {type = "item", name = "plastic-bar", amount = 5},
            {type = "item", name = "steel-plate", amount = 2},
            {type = "item", name = "tungsten-plate", amount = 1},
        },
        energy_required = 10,
        results = {{type = "item", name = "plastic-pressure-vessel", amount = 2}}
    },
    {
        type = "recipe",
        name = "plasticized-pump",
        enabled = false,
        subgroup = "energy-pipe-distribution",
        ingredients = {
            {type = "item", name = "pump", amount = 1},
            {type = "item", name = "plastic-bar", amount = 6},
        },
        energy_required = 10,
        results = {{type = "item", name = "plasticized-pump", amount = 1}}
    }
})