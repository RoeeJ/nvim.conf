local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "astro",
  "clangd",
  "cssls",
  "docker_compose_language_service",
  "dockerls",
  "elixirls",
  "gopls",
  "html",
  "java_language_server",
  "kotlin_language_server",
  "pylsp",
  "rust_analyzer",
  "svelte",
  "tailwindcss",
  "tsserver",
  "zls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities()),
  }
end

--
-- lspconfig.pyright.setup { blabla}
lspconfig["tsserver"].setup {
  on_attach = on_attach,
  capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities()),
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
}
