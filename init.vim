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
nnoremap <leader>fs :lua vim.lsp.buf.formatting_sync()<cr>
nnoremap <leader>e :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<cr>
nnoremap gdl :diffget //2<CR>
nnoremap gdr :diffget //3<CR>
nnoremap gdd :Gvdiffsplit!<CR>
set undodir=~/.undodir
set undofile
