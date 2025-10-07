return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        },
        config = function()
            vim.keymap.set("n", "<leader>fh", require('telescope.builtin').help_tags)
            vim.keymap.set("n", "<leader>ff", require('telescope.builtin').find_files)
            vim.keymap.set("n", "<leader>fc", function()
                require('telescope.builtin').find_files {
                    cwd = vim.fn.stdpath("config")
                }
            end)
        end
    }
}
