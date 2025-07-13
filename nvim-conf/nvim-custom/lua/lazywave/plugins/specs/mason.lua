return {
    {
        "mason-org/mason.nvim", 
        lazy = false,
        config = function()
            require("lazywave.plugins.configs.mason")
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig"},
    },
}
