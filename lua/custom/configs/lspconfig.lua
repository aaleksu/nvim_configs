local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"typescript", "typescriptreact", "typescript.tsx"},
  root_dir = lspconfig.util.root_pattern("package.json"),
})

lspconfig.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"css", "scss"},
})

lspconfig.phpactor.setup({
  filetypes = {"php"},
  root_dir = lspconfig.util.root_pattern("composer.json", ".git")
})
