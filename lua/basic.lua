vim.wo.colorcolumn = '80'
vim.g.mapleader = ' '


local set = vim.opt
set.completeopt = { 'menu', 'menuone', 'noselect' }
set.termguicolors = true
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.relativenumber = true
set.number = true
set.expandtab = true
set.swapfile = false
set.mouse = "a"
set.undofile = true
set.clipboard = 'unnamedplus'
vim.keymap.set('n', '<Leader>vr', ':Telescope find_files cwd=~/.config/nvim/<cr>')
vim.cmd [[
  colorscheme tokyonight-moon
]]

vim.g.NERDTreeHijackNetrw = 0 
vim.g.ranger_replace_netrw = 1 

local options = { noremap = true }
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.git_files, options)
vim.keymap.set('n', 'fg', builtin.live_grep, options)
vim.keymap.set('n', 'ag', builtin.grep_string, options)
vim.keymap.set('n', 'fb', builtin.buffers, options)
vim.keymap.set('n', 'fh', builtin.help_tags, options)

-- new 
vim.keymap.set('n', 'jk', '<Esc>', options)
vim.keymap.set('n', '<leader>w', ':w<cr>', options)
vim.keymap.set('n', '<leader>q', ':q<cr>', options)
vim.keymap.set('n', '<leader>gs', ':Git<cr>', options)
vim.keymap.set('n', '<leader>t', ':Telescope<cr>', options)
-- 

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function() 
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = 4
  end})

vim.keymap.set('n', '<Leader>e', ':NERDTreeToggle<cr>', options)
vim.keymap.set('n', '<Leader>nf', ':NERDTreeFind<cr>', options)
vim.keymap.set('n', '<Leader>bf', ':Telescope buffers<cr>', options)
vim.keymap.set('n', '<Leader>bg', ':Git blame<cr>', options)
vim.keymap.set('n', '<Leader>bn', ':next<cr>', options)
vim.keymap.set('n', '<Leader>bp', ':prev<cr>', options)
vim.keymap.set('n', 'gdl', ':diffget //2<CR>', options)
vim.keymap.set('n', 'gdr', ':diffget //3<CR>', options)
vim.keymap.set('n', 'gdd', ':Gvdiffsplit!<CR>', options)
vim.keymap.set('n', 'gds', ':Gvdiffsplit! develop<CR>', options)


vim.opt.undodir = vim.fn.expand('~/.undodir')
vim.opt.wildignore = { 'node_modules' }

-- custom commands
vim.api.nvim_create_user_command('Fpath', ':!echo % | xclip -sel clip', {})
