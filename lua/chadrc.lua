-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  -- theme = "chadracula",
  theme = "chadracula",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.ui = {
  telescope = { style = "bordered" }, -- borderless / bordered
  tabufline = {
    lazyload = true,
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "   ▄████████         ▄████████  ▄█          ▄████████    ▄████████    ▄████████  ▄█  ",
    "  ███    ███        ███    ███ ███         ███    ███   ███    ███   ███    ███ ███  ",
    "  ███    ███        ███    █▀  ███         ███    ███   ███    █▀    ███    ███ ███▌ ",
    "  ███    ███       ▄███▄▄▄     ███         ███    ███   ███         ▄███▄▄▄▄██▀ ███▌ ",
    "▀███████████      ▀▀███▀▀▀     ███       ▀███████████ ▀███████████ ▀▀███▀▀▀▀▀   ███▌ ",
    "  ███    ███        ███    █▄  ███         ███    ███          ███ ▀███████████ ███  ",
    "  ███    ███        ███    ███ ███▌    ▄   ███    ███    ▄█    ███   ███    ███ ███  ",
    "  ███    █▀         ██████████ █████▄▄██   ███    █▀   ▄████████▀    ███    ███ █▀   ",
    "                               ▀                                     ███    ███      ",
    "                                                                                     ",
    "          In doing what we ought we deserve no praise because it is our duty         ",
    "",
  },
}

return M
