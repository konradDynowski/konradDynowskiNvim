vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- disable mouse
vim.opt.mouse = ""

-- autozz
vim.keymap.set("i", "<Esc>", "<Esc>zz")
vim.keymap.set("v", "<Esc>", "<Esc>zz")
vim.keymap.set("n", "<Esc>", "<Esc>zz")

-- enter visual block without conflict with windows paste
vim.keymap.set("n", "<leader>v", "<C-v>")