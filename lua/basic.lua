local set = vim.opt

-- vim.wo.colorcolumn = '80'
vim.g.mapleader = ' '
set.completeopt = { 'menu', 'menuone'}
set.termguicolors = true
set.relativenumber = true
set.number = true
set.expandtab = true
set.swapfile = false
set.splitright = true
set.splitbelow = true
set.mouse = "a"
set.undofile = true
set.laststatus=0
set.clipboard = 'unnamedplus'
vim.keymap.set('n', '<Leader>vr', ':Telescope find_files cwd=~/.config/nvim/<cr>')
vim.cmd [[
  colorscheme catppuccin
]]

vim.cmd [[
        setlocal omnifunc=syntaxcomplete#Complete
]]

local options = { noremap = true }
local builtin = require('telescope.builtin')

vim.keymap.set('n', 'ff', builtin.git_files, options)
-- vim.keymap.set('n', 'fg', builtin.live_grep, options)
vim.keymap.set("n", "fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set('n', 'ag', builtin.grep_string, options)
vim.keymap.set('n', 'fb', builtin.buffers, options)
vim.keymap.set('n', 'fh', builtin.help_tags, options)
vim.keymap.set('n', 'tm', builtin.marks, options)

vim.keymap.set('n', '<leader>w', ':w<cr>', options)
vim.keymap.set('n', 'q', ':q!<cr>', options)
vim.keymap.set('n', '<leader>gs', ':Git<cr>', options)
vim.keymap.set('n', '<leader>t', ':Telescope<cr>', options)
vim.keymap.set('n', '<leader>dp', ':diffput<cr>', options)
vim.keymap.set('n', '<C-j>', ':next<cr>', options)
vim.keymap.set('n', '<C-k>', ':prev<cr>', options)
vim.keymap.set('n', '<leader>vs', ':vs<cr>', options)
vim.keymap.set('n', '<leader>sp', ':sp<cr>', options)
vim.keymap.set('n', '<leader>gp', ':Git push<cr>', options)
vim.keymap.set('n', '<leader>pf', ':!prettier % --write<cr><cr>', options)

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function() 
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = 4
  end})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "sql",
  callback = function() 
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = 4
  end})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function() 
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.softtabstop = 2
  end})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "json",
  callback = function() 
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.softtabstop = 2
  end})

vim.keymap.set('n', '<Leader>ne', ':NERDTreeToggle<cr>', options)
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

function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end


local keymap = vim.keymap.set
local tb = require('telescope.builtin')
local opts = { noremap = true, silent = true }

keymap('n', '<space>bg', ':Telescope current_buffer_fuzzy_find<cr>', opts)
keymap('v', '<space>bg', function()
	local text = vim.getVisualSelection()
	tb.current_buffer_fuzzy_find({ default_text = text })
end, opts)

-- keymap('n', '<space>G', ':Telescope live_grep<cr>', opts)
keymap('v', 'ag', function()
	local text = vim.getVisualSelection()
	tb.grep_string({ default_text = text })
end, opts)

keymap('v', 'ff', function()
	local text = vim.getVisualSelection()
	tb.git_files({ default_text = text })
end, opts)

keymap('n', '<space>ff', function()
  local text = vim.call('expand','<cword>') 
	tb.git_files({ default_text = text })
end, opts)

vim.api.nvim_exec([[
  augroup CustomTabstop
    autocmd!
    autocmd FileType javascript,typescript,html setlocal tabstop=2 shiftwidth=2 softtabstop=2
  augroup END
]], false)

local telescope = require("telescope")
local lga_actions = require("telescope-live-grep-args.actions")

telescope.setup {
  extensions = {
    live_grep_args = {
      auto_quoting = true, -- enable/disable auto-quoting
      -- define mappings, e.g.
      mappings = { -- extend mappings
        i = {
          ["<C-k>"] = lga_actions.quote_prompt(),
          ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
        },
      },
      -- ... also accepts theme settings, for example:
      -- theme = "dropdown", -- use dropdown theme
      -- theme = { }, -- use own theme spec
      -- layout_config = { mirror=true }, -- mirror preview pane
    }
  }
}
