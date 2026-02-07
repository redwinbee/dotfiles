return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable("clangd")
        vim.lsp.enable("rust_analyzer")
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("pylsp")
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
