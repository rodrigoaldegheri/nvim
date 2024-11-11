-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- Packer can manage itself
use 'wbthomason/packer.nvim'

use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
    -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
        require('render-markdown').setup({})
    end,
})

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use('windwp/nvim-autopairs')

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('nvim-lua/plenary.nvim')

-- Prime shit
use({
  'rose-pine/neovim',
  as = 'rose-pine',
  config = function()
    vim.cmd("colorscheme rose-pine")
  end
})

use('ThePrimeagen/vim-be-good')
use('ThePrimeagen/harpoon')

use('mbbill/undotree')
use('tpope/vim-fugitive')

--- Lsp

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- this is the colorscheme I use

  use('ajmwagar/vim-deus')
  use('ramojus/mellifluous.nvim')
  use('Yazeed1s/oh-lucy.nvim')
  -- end colorschemes 

  use('mattn/emmet-vim')

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use("lervag/vimtex")
end)
