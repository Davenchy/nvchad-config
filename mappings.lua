---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-b>"] = { "<cmd>NvimTreeToggle<cr>", "toggle nvimtree" },
    ["<C-g>"] = { "<cmd>HopAnywhereMW<cr>", "go anywhere in any window" },
  },
  i = {
    ["<C-s>"] = { "<cmd>w<cr><esc>", "save current buffer" },
    ["<C-b>"] = { "<cmd>NvimTreeToggle<cr>", "toggle nvimtree" },
    ["<C-d>"] = { "<esc>yypi", "duplicate line down" },
    ["<C-D>"] = { "<esc>yyPi", "duplicate line up" },
  },
  t = {
    ["<esc><esc>"] = { "<C-\\><C-n>", "Exit terminal" },
  },
}

-- more keybinds!

return M
