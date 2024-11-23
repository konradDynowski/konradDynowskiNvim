vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- center screen on scrolls
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copy easily
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- autozz
vim.keymap.set("i", "<Esc>", "<Esc>zz")
vim.keymap.set("v", "<Esc>", "<Esc>zz")
vim.keymap.set("n", "<Esc>", "<Esc>zz")

-- enter visual block without conflict with windows paste
vim.keymap.set("n", "<leader>v", "<C-v>")

-- keymaps debugging
local dap = require("dap") 
vim.keymap.set("n", "<C-b>", function() dap.toggle_breakpoint() end, { noremap = true })
vim.keymap.set("n", "<F2>", function() dap.continue() end, { noremap = true })
vim.keymap.set("n", "<F3>", function() dap.step_over() end, { noremap = true })
vim.keymap.set("n", "<F4>", function() dap.step_into() end, { noremap = true })
vim.keymap.set("n", "<F5>", function() dap.step_out() end, { noremap = true })
vim.keymap.set("n", "<F6>", function() dap.terminate() end, { noremap = true })

-- keymaps dap ui
local dapui = require("dapui")
vim.keymap.set("n", "<leader>dui", function () dapui.toggle() end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>dr", function () dap.repl.toggle() end, { noremap = true, silent = true })


-- telescope
local builtin_tel = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin_tel.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin_tel.git_files, { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>ps", builtin_tel.live_grep, { desc = "Grep on roids" })

-- harpoon
local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<C-Right>", function() harpoon:list():next() end)
vim.keymap.set("n", "<C-Left>", function() harpoon:list():prev() end)

-- autoclosing
vim.keymap.set("i", "\"", "\"\"<Left>", { desc = "Autoclose double quotes" })
vim.keymap.set("i", "'", "''<Left>", { desc = "Autoclose single quotes" })
vim.keymap.set("i", "(", "()<Left>", { desc = "Autoclose parentheses" })
vim.keymap.set("i", "[", "[]<Left>", { desc = "Autoclose square brackets" })
vim.keymap.set("i", "{", "{}<Left>", { desc = "Autoclose curly braces" })
vim.keymap.set("i", "<", "<><Left>", { desc = "Autoclose triangular braces" })

-- works ok for single line input, which is fine for me!
vim.keymap.set("v", "\"", "c\"\"<Left><Esc>pgv", { desc = "Envelope selection with double quotes" })
vim.keymap.set("v", "'", "c''<Left><Esc>pgv", { desc = "Envelope selection with single quotes" })
vim.keymap.set("v", "(", "c()<Left><Esc>pgv", { desc = "Envelope selection with parentheses" })
vim.keymap.set("v", "[", "c[]<Left><Esc>pgv", { desc = "Envelope selection with square brackets" })
vim.keymap.set("v", "{", "c{}<Left><Esc>pgv", { desc = "Envelope selection with curly braces" })
vim.keymap.set("v", "<", "c<><Left><Esc>pgv", { desc = "Envelope selection with triangular braces" })

-- lsp related stuff
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]"})
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

