-- ~/.config/nvim/lua/lsp/servers.lua

-- Install and setup mason
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" },
})

-- Setup LSP servers
local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({})
  end,
})
