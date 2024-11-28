set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus

command! S source
command! T w | !typos %

nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+1<CR>
nnoremap <Leader>f $
nnoremap <Leader>s 0
nnoremap <Leader>e G
nnoremap <Leader>i gg
nnoremap <Leader>w :e %:p:h<CR>
nnoremap <Leader>q :q<CR>

inoremap <A-Up> <Esc>:m-2<CR>a
inoremap <A-Down> <Esc>:m+1<CR>a
inoremap <C-f> <C-o>$
inoremap <C-s> <C-o>0<Left>
inoremap <C-Right> <C-o>e<Right>
inoremap <C-CR> <C-o>$<CR>
