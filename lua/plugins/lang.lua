return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes = { "html", "css", "elixir", "eelixir", "heex" },
        },
        emmet_ls = {
          filetypes = { "html", "css", "elixir", "eelixir", "heex" },
        },
        tailwindcss = {
          filetypes = { "elixir", "elixir-eex", "eelixir", "phoenix-heex", "html" },
          init_options = {
            userLanguages = {
              eelixir = "html",
              elixir = "html",
              heex = "html",
            },
          },
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  'class[:]\\s*"([^"]*)"',
                },
              },
            },
          },
        },
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
            "--suggest-missing-includes",
            "--cross-file-rename",
            "--offset-encoding=utf-16",
          },
        },
      },
    },
  },
  {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup({
        nextls = { enable = true },
        credo = {},
        elixirls = {
          enable = true,
          settings = elixirls.settings({
            fetchDeps = true,
            suggestSpecs = true,
            dialyzerEnabled = true,
            enableTestLenses = true,
          }),
          on_attach = function(client, bufnr)
            vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
          end,
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "css",
        "eex",
        "elixir",
        "go",
        "gomod",
        "gosum",
        "haskell",
        "heex",
        "erlang",
        "html",
        "javascript",
        "kotlin",
        "lua",
        "markdown",
        "markdown_inline",
        "rust",
        "svelte",
        "tsx",
        "typescript",
        "vim",
        "zig",
      },
      highlight = { enable = true },
    },
  },
}
