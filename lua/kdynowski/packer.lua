-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- Packer can manage itself
use 'wbthomason/packer.nvim'

use {
"williamboman/mason.nvim",
"williamboman/mason-lspconfig.nvim",
"neovim/nvim-lspconfig",}
use "jose-elias-alvarez/null-ls.nvim"
use "MunifTanjim/eslint.nvim"

use {
'nvim-telescope/telescope.nvim', tag = '0.1.8',
requires = { { 'nvim-lua/plenary.nvim' } }
}

use ({
'rose-pine/neovim',
as = 'rose-pine',
config = function()
vim.cmd('colorscheme rose-pine')
end
})

use "Raimondi/delimitMate"
use {
'nvim-treesitter/nvim-treesitter',
run = function()
local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
ts_update()
end,
}

-- install lsps etc
--
use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
use {
"ThePrimeagen/harpoon",
branch = "harpoon2",
requires = { {"nvim-lua/plenary.nvim"} }
} 

use "mbbill/undotree"
use "tpope/vim-fugitive"
use 'm4xshen/autoclose.nvim'
use {
'hrsh7th/nvim-cmp',
requires = {
'hrsh7th/cmp-nvim-lsp',
'hrsh7th/cmp-buffer',
'hrsh7th/cmp-path',
'hrsh7th/cmp-vsnip',         -- Optional, for snippets
'hrsh7th/vim-vsnip'          -- Optional, snippet engine
}
}
use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.3.0", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})
end)


