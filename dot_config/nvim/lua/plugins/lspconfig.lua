return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		vim.lsp.enable("clangd")
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("tinymist")
		vim.lsp.enable("html")
		vim.lsp.enable("cssls")
		vim.lsp.enable("jsonls")
	end,

	vim.lsp.config("lua_ls", {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" }
				}
			}
		}
	})
}
