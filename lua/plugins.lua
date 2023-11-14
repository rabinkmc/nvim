vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim"
  use {'tpope/vim-commentary'}
  use {'tpope/vim-surround'}
  use {'tpope/vim-fugitive'}
  use 'tpope/vim-dadbod'
  use 'neovim/nvim-lspconfig'
  use "williamboman/nvim-lsp-installer"
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  -- use 'SirVer/ultisnips'
  -- use 'honza/vim-snippets'
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
  use 'nvim-tree/nvim-web-devicons'
  use 'folke/tokyonight.nvim'
  use 'watzon/vim-edge-template'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'windwp/nvim-autopairs'
  use 'nvim-telescope/telescope-live-grep-args.nvim'
  use 'vimwiki/vimwiki'
  use 'rest-nvim/rest.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
end)
