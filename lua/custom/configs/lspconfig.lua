local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "tailwindcss", "clangd", "gopls", "rust_analyzer", "pylsp" }

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
    "svelte",
  },
}

lspconfig["tsserver"].setup {
  cmd = { "gopls", "--remote=auto" },
  capabilties = {
    textDocuemnt = {
      completion = {
        completionItem = {
          snippetSupport = true,
        },
      },
    },
  },
  init_options = {
    usePlaceholders = true,
    completeUnimported = true,
  },
}
