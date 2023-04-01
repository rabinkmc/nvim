lua require('basic')
lua require('plugins')
lua require('lsp_config')
lua require('nvim_cmp')
lua require('null_ls')

set completeopt=menu,menuone,noselect
set number
set relativenumber
set clipboard=unnamedplus
nnoremap <leader>gs :Git<cr>
nnoremap <leader>fs :lua vim.lsp.buf.format()<cr>
nnoremap <leader>e :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader>bf :Telescope buffers<cr>
nnoremap gdl :diffget //2<CR>
nnoremap gdr :diffget //3<CR>
nnoremap gdd :Gvdiffsplit!<CR>
nnoremap gds :Gvdiffsplit! develop<CR>
nnoremap <leader> :Gvdiffsplit! develop<CR>
set undodir=~/.undodir
set undofile
set wildignore=*/node_modules/*
command Fpath :!echo % | xclip -sel clip
