local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "svelte" } }, -- so prettier works only on these filetypes
  null_ls.builtins.formatting.prettier,
  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- golang
  null_ls.builtins.formatting.gofumpt,
  null_ls.builtins.formatting.goimports,

  -- rust
  null_ls.builtins.formatting.rustfmt,
  -- zig
  null_ls.builtins.formatting.zigfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
