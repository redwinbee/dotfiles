return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", word = { "vim%.uv" } },
            },
        },
    },
    config = function()
        vim.lsp.enable('clangd');
        vim.lsp.enable('rust_analyzer');
        vim.lsp.enable('jdtls');
    end,
}
