return {
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
}
