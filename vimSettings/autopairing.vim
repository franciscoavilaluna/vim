" =============================
" Autopairing (with smart skip)
" =============================

inoremap <expr> ( getline('.')[col('.') - 1] == ')' ? '<Right>' : '()<Left>'
inoremap <expr> ) getline('.')[col('.') - 1] == ')' ? '<Right>' : ')'
inoremap (<CR> (<CR>)<Esc>0ko

inoremap <expr> { getline('.')[col('.') - 1] == '}' ? '<Right>' : '{}<Left>'
inoremap <expr> } getline('.')[col('.') - 1] == '}' ? '<Right>' : '}'
inoremap {<CR> {<CR>}<Esc>0ko

inoremap <expr> [ getline('.')[col('.') - 1] == ']' ? '<Right>' : '[]<Left>'
inoremap <expr> ] getline('.')[col('.') - 1] == ']' ? '<Right>' : ']'
inoremap [<CR> [<CR>]<Esc>0ko
