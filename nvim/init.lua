-- ~/.config/nvim/init.lua

-- Load plugin manager first
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load Lua configs
require("options")
require("keymaps")
require("plugins")

vim.lsp.enable({
	"pyright",
})
vim.diagnostic.config({
	virtual_text = false,
	virtual_line = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "󰔷",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "",
		},
	},
	numhl = {
		[vim.diagnostic.severity.ERROR] = "ErrorMsg",
		[vim.diagnostic.severity.WARN] = "WarningMsg",
	},
})
