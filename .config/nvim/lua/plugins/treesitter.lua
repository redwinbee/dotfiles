return {
    {
        "nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
	    require'nvim-treesitter.configs'.setup {
            ensure_installed = { "lua", "vim", "vimdoc", "c", "cpp", "rust", "java" },
            auto_install = true
        }

        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        }
	end,
    }
}
