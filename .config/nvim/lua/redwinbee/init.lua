require("redwinbee.remap")

-- Options
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.termguicolors = true

-- Diagnostics
vim.diagnostic.enable = true
vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
        suffix = '',
        format = function(diagnostic)
            return string.format([[%s]], diagnostic.message)
        end,
    }
})
