vim.keymap.set("n", "T", "<Cmd>ToggleTerm name=termh direction=horizontal<CR>", { desc = "[T]oggle Terminal" })
vim.keymap.set("t", "T", "<Cmd>ToggleTerm name=termh direction=horizontal<CR>", { desc = "[T]oggle Terminal" })
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], {})
