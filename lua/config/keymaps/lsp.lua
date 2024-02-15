-- Util functions
local file_format = function()
  vim.lsp.buf.format({ async = true })
end
-- Normal Mode Mappings
vim.keymap.set("n", "<leader>ff", file_format, { desc = "[F]ormat [F]ile" })
vim.keymap.set("n", "<leader>lr", "<Cmd>LspRestart<CR>", { desc = "[L]SP [R]estart" })
