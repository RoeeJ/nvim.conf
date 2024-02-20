return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    -- vim.keymap.set("n", "<leader>tt", "<Cmd>NvimTreeToggle<CR>", { desc = "[T]ree [T]oggle" })
    -- vim.keymap.set("n", "<leader>e", "<Cmd>Neotree reveal<CR>", { desc = "Tree [E]xplore" })
    { "<leader>tt", "<Cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
    { "<leader>tr", "<Cmd>NvimTreeRefresh<CR>", desc = "Refresh NvimTree" },
    {

      "<leader>tn",
      "<Cmd>NvimTreeFindFile<CR>",
      desc = "Find File in NvimTree",
    },
    { "<leader>e", "<Cmd>NvimTreeFocus<CR>", desc = "Focus NvimTree" },
  },
  opts = {
    filters = {
      dotfiles = false,
      exclude = { vim.fn.stdpath("config") .. "/lua/custom" },
      git_ignored = false,
    },
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    hijack_unnamed_buffer_when_opening = false,
    sync_root_with_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = false,
    },
    view = {
      adaptive_size = false,
      side = "left",
      width = 30,
      preserve_window_proportions = true,
    },
    git = {
      enable = true,
      ignore = true,
    },
    filesystem_watchers = {
      enable = true,
      ignore_dirs = {
        "node_modules",
        "deps",
      },
    },
    actions = {
      open_file = {
        resize_window = true,
      },
    },
    renderer = {
      root_folder_label = false,
      highlight_git = false,
      highlight_opened_files = "none",

      indent_markers = {
        enable = false,
      },

      icons = {
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = false,
        },

        glyphs = {
          default = "󰈚",
          symlink = "",
          folder = {
            default = "",
            empty = "",
            empty_open = "",
            open = "",
            symlink = "",
            symlink_open = "",
            arrow_open = "",
            arrow_closed = "",
          },
          git = {
            unstaged = "✗",
            staged = "✓",
            unmerged = "",
            renamed = "➜",
            untracked = "★",
            deleted = "",
            ignored = "◌",
          },
        },
      },
    },
  },
  config = function(_, opts)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup(opts)
  end,
}
