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
