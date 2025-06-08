require 'nvim-treesitter.configs'.setup {
    ensure_installled = { "c", "rust" ,"lua", "help" ,"vim", "vimdoc", "query", "markdown", "markdown_inline", },
    sync_installed = false,
    auto_install = true,
    highlight = {
        enable = true,
	additional_vim_regex_highlighting = false,
    },
}
