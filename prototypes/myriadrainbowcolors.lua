local colors = {
    red = { tint = { r = 0.73 , g = 0.24, b = 0.24 }, enabled = true}, -- #ba3d3d
    blue = { tint = { r = 0.3, g = 0.45, b = 0.76 }, enabled = true}, --  #4d73c2
    green = { tint = { r = 0.36, g = 0.71, b = 0.37 }, enabled = true}, -- #5cb55e
    yellow = { tint = { r = 0.72, g = 0.7, b = 0.33 }, enabled = true}, -- #b8b354
    orange = { tint = { r = 0.8, g = 0.47, b = 0.26 }, enabled = true}, -- #cc7842
    purple = { tint = { r = 0.53, g = 0.33, b = 0.67}, enabled = true}, -- #8754ab
    pink = { tint = { r = 0.7, g = 0.38, b = 0.63 }, enabled = true}, -- #b361a1
    black = { tint = { r = 0.23, g = 0.23, b = 0.23 }, enabled = true}, -- #3b3b3b
    white = { tint = { r = 0.69, g = 0.69, b = 0.69 }, enabled = true}, -- #b0b0b0
}

local auxiliary_colors = {
    atomic_blast = {tint = { r = 0.52, g = 0.76, b = 0.38 }, enabled = false}, -- #85c261 | molten Tiberium,
    radiohazard = { tint = { r = 0.26, g = 0.83, b = 0.26 }, enabled = false}, -- #42d442 | liquid Tiberium
    monster = { tint = { r = 0.36, g = 0.71, b = 0.36 }, enabled = false}, -- #5cb55c | Tiberium slurry
    kaiju = { tint = { r = 0.11, g = 0.8, b = 0.9 }, enabled = false}, -- #1ccce6 | blue tiberium slurry, iron sulfate, alien frost extract
    brawndo = { tint = { r = 0.26, g = 0.7, b = 0.9 }, enabled = false}, -- #42b3e6 | my electrolytes (assault and battery)
    biotoxin = { tint = { r = 0.6, g = 0.69, b = 0.39 }, enabled = false}, -- #99b063 | tin sulfides
    marooned = { tint = { r = 0.72, g = 0.34, b = 0.62 }, enabled = false}, -- #b8579e
    ranger = { tint = { r = 0.34, g = 0.71, b = 0.63 }, enabled = false}, -- #57b5a1 | Fluorine Gas
    guilliman = { tint = { r = 0.13, g = 0.42, b = 0.64 }, enabled = false}, -- #216ba3
    masquerade = { tint = { r = 0.65, g = 0.4, b = 0.4 }, enabled = false}, -- #a6666f | Hematite Froth
    Corellian_Corvette =  { tint = { r = 0.33, g = 0.5, b = 0.34 }, enabled = false}, -- #557f71| Covellite Froth
    days_of_gold = { tint = { r = 0.63, g = 0.61, b = 0.45 }, enabled = false}, -- #a19c73 | pyrite Froth
    wheatfield = { tint = { r = 0.48, g = 0.39, b = 0.25 }, enabled = false}, -- #7a6340 | siderite Froth
    city_night = { tint = { r = 0.25, g = 0.29, b = 0.29 }, enabled = false}, -- #404a4a | tenorite Froth
    captain_atom = { tint = { r = 0.2, g = 0.45, b = 0.52 }, enabled = false}, -- #327286 | Plutonium waste 
    major_force = { tint = { r = 0.11, g = 0.41, b = 0.1}, enabled = false}, -- #1c691a | Uranium waste
    dirtwad = { tint = { r = 0.3, g = 0.26, b = 0.19 }, enabled = false}, -- #4d4230 | chemical sludge
    electric_boogaloo = { tint = { r = 0.27, g = 0.28, b = 0.35 }, enabled = false}, -- #454759 | electric sludge
    tinman = { tint = { r = 0.62, g = 0.54, b = 0.45 }, enabled = false}, -- #9e8a73 | Organotins, resin
    deep_blue = { tint = { r = 0.17, g = 0.2, b = 0.34 }, enabled = false}, -- #2b3357 | diluted bitumen, methane, ammoniacal solution, ammonia
    deep_purp = { tint = { r = 0.26, g = 0.2, b = 0.39 }, enabled = false}, -- #423363 | gas maybe, mixed oxide waste
    pinky = { tint = { r = 0.71, g = 0.42, b = 0.5 }, enabled = false}, -- #b56b80 | holmium solution
    greenmile = { tint = { r = 0.1, g = 0.65, b = 0.47 }, enabled = false}, -- #1aa678  |fluoroketones
    royalblue = { tint = { r = 0.17, g = 0.17, b = 0.39 }, enabled = false}, -- #2b2b63 | vacuum
    deepsea = { tint = { r = 0.16, g = 0.41, b = 0.56}, enabled = false}, -- #29698f | saline (salt) water
    bayou_bob = { tint = { r = 0.39, g = 0.57, b = 0.69 }, enabled = false} -- #6391b0 | brackish water
}

local refractory_colors = {
    iron = { r = 0.13, g = 0.19, b = 0.29 }, -- #21304a
    copper = { r = 0.35, g = 0.19, b = 0.06 }, -- #59300f
    Sodiluminum = { r = 0.21, g = 0.21, b = 0.21 }, -- #363636

}

return {
    refractory_colors = refractory_colors,
    colors = colors,
    auxiliary_colors = auxiliary_colors
}