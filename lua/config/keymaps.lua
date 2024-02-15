require("config.keymaps._init")
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Normal Mode Mappings
vim.keymap.set("n", "<leader>lg", "<Cmd>LazyGit<CR>", { desc = "[L]azy [G]it" })
vim.keymap.set("n", "<leader>mr", "<Cmd>:make<CR>", { desc = "[M]ake [R]un" })
