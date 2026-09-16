return {
	"neovim/nvim-lspconfig",
    opts = {
        servers = {
            ols = {},
			clangd = {},
        },
    },
    config = function(_, opts)
        for server, config in pairs(opts.servers) do
            config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
            vim.lsp.config(server, config)
            vim.lsp.enable(server)
        end
    end,
}

--if not vim.lsp.is_enabled('clangd') then
 --    vim.lsp.enable('clangd', clangd_opts)
 --end
