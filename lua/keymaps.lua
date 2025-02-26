vim.keymap.set('n', '<M-j>', ':next<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<M-k>', ':prev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<leader>gs', ':Git<CR>')

vim.keymap.set('n', '<leader>vr', function()
  local builtin = require 'telescope.builtin'
  builtin.find_files {
    prompt_title = 'config files',
    cwd = '~/.config/nvim/',
  }
end)
