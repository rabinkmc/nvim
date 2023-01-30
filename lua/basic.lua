vim.wo.colorcolumn = '80'
vim.g.mapleader = ' '

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.mouse = "a"
vim.keymap.set('n', '<Leader>vr', ':Telescope find_files cwd=~/.config/nvim/<cr>')
vim.cmd [[
  colorscheme dracula
]]

local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.git_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'ag', builtin.grep_string, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function() 
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = 4
  end})
