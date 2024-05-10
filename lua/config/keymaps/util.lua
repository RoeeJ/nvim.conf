-- Normal Mode Mappings
vim.keymap.set("n", "q", "<Nop>", {})
vim.keymap.set("n", ";", ":", { nowait = true, desc = "enter command mode" })
vim.keymap.set("n", "<leader>ww", "<Cmd>:w<CR>", { noremap = true, desc = "[W]rite" })
vim.keymap.set("n", "<leader>we", "<Cmd>:wa<CR>", { noremap = true, desc = "[W]rite All" })
vim.keymap.set("n", "<leader>bn", "<Cmd>bprevious<CR>", { desc = "[B]uffer: Previous" })
vim.keymap.set("n", "<leader>bb", "<Cmd>bnext<CR>", { desc = "[B]uffer: [N]ext" })
vim.keymap.set("n", "<leader>bq", function()
  require("mini.bufremove").delete(0)
end, { desc = "[B]uffer: [N]ext" })
-- Insert Mode Mappings
vim.keymap.set("i", "kj", "<Esc>", { nowait = true, noremap = true, desc = "Exit insert mode" })

local quit_tab = function()
  local bd = require("mini.bufremove").delete
  if vim.bo.modified then
    local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
    if choice == 1 then -- Yes
      vim.cmd.write()
      bd(0)
    elseif choice == 2 then -- No
      bd(0, true)
    end
  else
    bd(0)
  end
end

vim.keymap.set("n", "<leader>qq", quit_tab, { noremap = true, desc = "[Q]uit" })
