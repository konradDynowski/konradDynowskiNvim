vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.incsearch = true

vim.opt.scrolloff = 12
vim.opt.updatetime = 50

vim.opt.expandtab = true  -- Use spaces instead of tabs
vim.opt.shiftwidth = 2    -- Indentation level (usually 2 or 4 for JS)
vim.opt.tabstop = 2       -- Number of spaces per tab
vim.opt.softtabstop = 2   -- Number of spaces per tab when editing
vim.opt.smartindent = true  -- Enable smart indent
vim.opt.autoindent = true   -- Copy indent from the current line when creating

vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = false,
}
