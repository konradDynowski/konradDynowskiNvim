local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Grep on roids" })
