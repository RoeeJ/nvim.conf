---@type MappingsTable
local M = {}
local close_buf = function()
  require("nvchad.tabufline").close_buffer()
end

local format_file = function()
  vim.lsp.buf.format { async = true }
end

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ww"] = { "<Cmd>:w<CR>", "[W]rite", opts = { noremap = true } },
    ["<leader>we"] = { "<Cmd>:wa<CR>", "[W]rite All", opts = { noremap = true } },
    ["<leader>qq"] = { "<Cmd>:q!<CR>", "[Q]uit", opts = { noremap = true } },
    ["<leader>bn"] = { "<Cmd>bprevious<CR>", "[B]uffer: Previous" },
    ["<leader>bb"] = { "<Cmd>bNext<CR>", "[B]uffer: [N]ext" },
    ["<leader>bq"] = { close_buf, "[B]uffer: [Q]uit" },
    ["<leader>ff"] = { format_file, "[F]ormat [F]ile" },
    ["<leader>sf"] = { "<Cmd>Telescope find_files<CR>", "[S]earch [F]iles" },
    ["<leader>sg"] = { "<Cmd>Telescope live_grep<CR>", "[S]earch [G]rep" },
    ["gr"] = { "<Cmd>Telescope lsp_references<CR>", "[S]earch [G]rep" },
    ["<leader><leader>"] = { "<Cmd>Telescope buffers<CR>", "[S]earch Buffers" },
    ["<leader>sd"] = { "<Cmd>Telescope diagnostics<CR>", "[S]earch [D]iagnostics" },
    ["<leader>/"] = { "<Cmd>Telescope current_buffer_fuzzy_find<CR>", "[S]earch In Buffer" },
    ["<leader>sl"] = { "<Cmd>Telescope lsp_definitions<CR>", "[S]earch [L]sp" },
    ["<leader>tt"] = { "<Cmd>NvimTreeToggle<CR>", "[T]oggle [T]ree" },
    ["q"] = { "<Nop>" },
  },
  i = {
    ["kj"] = { "<Esc>", "Exit insert mode", opts = { nowait = true, noremap = true } },
  },
}

-- more keybinds!

return M
