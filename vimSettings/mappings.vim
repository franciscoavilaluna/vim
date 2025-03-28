" ===========================
" Key Mappings
" ===========================
" Reload Config and Colorscheme Selector
nmap <leader>rl :source ~/.vimrc<CR>
map <leader>cs :colorscheme <C-D>

" Buffer Navigation
nnoremap <C-left> :bprevious<CR>
nnoremap <C-right> :bnext<CR>

" Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Cursor Positioning
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

" Line Manipulation
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap J mzJ`z

" Miscellaneous Mappings
inoremap <C-c> <Esc>
nnoremap Q <nop>
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>x :!chmod +x %<CR>

" File Searching (:find)
nnoremap <Leader>pf :find<Space>
