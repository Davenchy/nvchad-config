local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
-- check `:help lspconfig-all`
local servers = {
	"html",
	"cssls",
	"tsserver",
	"clangd",
	"csharp_ls",
	"dartls",
	"pyright",
	"tailwindcss",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
