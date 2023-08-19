vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim"
  use {'tpope/vim-commentary'}
  use {'tpope/vim-surround'}
  use {'tpope/vim-fugitive'}

  use 'neovim/nvim-lspconfig'
  use "williamboman/nvim-lsp-installer"
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'mattn/emmet-vim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  }
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  use 'nvim-treesitter/nvim-treesitter'
  use {'vimwiki/vimwiki'}
  use 'nvim-tree/nvim-web-devicons'
  use 'folke/tokyonight.nvim'
 use 'watzon/vim-edge-template'
 use 'jiangmiao/auto-pairs'
 use 'prettier/vim-prettier'
 use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
 }
 use 'nvim-telescope/telescope-file-browser.nvim'
 use { "catppuccin/nvim", as = "catppuccin" }
end)
