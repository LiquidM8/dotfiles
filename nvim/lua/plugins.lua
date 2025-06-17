-- ~/.config/nvim/lua/plugins.lua

require("lazy").setup({
  -- Core LSP support
  { "neovim/nvim-lspconfig" },

  -- Mason (LSP installer)
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  -- Bridge Mason with lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
        install_root_dir = vim.fn.expand('$HOME/.local/share/nvim/mason/bin'),
		path = "append"
      })
    end
  },
})
