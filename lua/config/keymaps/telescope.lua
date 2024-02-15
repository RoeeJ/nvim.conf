-- Normal Mode Mappings
vim.keymap.set("n", "<leader>/", "<Cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "[S]earch In Buffer" })
vim.keymap.set("n", "<leader><leader>", "<Cmd>Telescope buffers<CR>", { desc = "[S]earch Buffers" })
vim.keymap.set("n", "<leader>sd", "<Cmd>Telescope diagnostics<CR>", { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sf", "<Cmd>Telescope find_files<CR>", { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sg", "<Cmd>Telescope live_grep<CR>", { desc = "[S]earch [G]rep" })
vim.keymap.set("n", "<leader>sl", "<Cmd>Telescope lsp_definitions<CR>", { desc = "[S]earch [L]sp" })
vim.keymap.set("n", "gr", "<Cmd>Telescope lsp_references<CR>", { desc = "Search Grep" }) -- Adjusted description to match pattern
