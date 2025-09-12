local pipefunctions = require("__better-plastic-pipes__.prototypes.pipefunctions")

local frozenpictures = pipefunctions.FPpipefrozen()
local frozenptg = pipefunctions.FPptgfrozen()
local frozencovers = pipefunctions.FPcoversfrozen()

local M = {}

function M.apply_to_pipe(pipe)
    for name, sprite in pairs(frozenpictures) do
        pipe.pictures[name] = sprite
    end
    pipe.fluid_box.pipe_covers_frozen = frozencovers
end

function M.apply_to_ptg(ptg)
    for name, sprite in pairs(frozenptg) do
        ptg.pictures[name] = sprite
    end
    ptg.fluid_box.pipe_covers_frozen = frozencovers
end

return M