local M = {}

M.treesitter = {
  ensure_installed = {
    "c",
    "css",
    "elixir",
    "go",
    "gomod",
    "gosum",
    "haskell",
    "html",
    "javascript",
    "javascript",
    "kotlin",
    "lua",
    "markdown",
    "markdown_inline",
    "rust",
    "svelte",
    "tsx",
    "typescript",
    "typescript",
    "vim",
    "zig",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<c-space>",
      scope_incremental = "<c-s>",
      node_decremental = "<M-space>",
    },
  },
}

M.mason = {
  ensure_installed = {
    "clang-format",
    "clangd",
    "css-lsp",
    "deno",
    "gofumpt",
    "goimports",
    "gopls",
    "html-lsp",
    "java-language-server",
    "kotlin-language-server",
    "lua-language-server",
    "prettier",
    "rust-analyzer",
    "rustywind",
    "stylua",
    "svelte-language-server",
    "tailwindcss-language-server",
    "typescript-language-server",
    "zls",
  },
}

-- git support in nvimtree
M.nvimtree = {
    sort_by = "case_sensitive",

  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
