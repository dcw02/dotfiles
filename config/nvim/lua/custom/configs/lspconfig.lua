local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.sigantureHelpProvider = false
    bufnr.capabilities.offsetEncoding = { "utf-16" }
    on_attach(client, bufnr)
  end,
  capabilities = capabilities
}

