vim.keymap.set("n", "<leader><leader>", vim.cmd.Ex)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files"})
vim.keymap.set("n", "<leader>fg", builtin.find_files, { desc = "Telescope live grep"})
