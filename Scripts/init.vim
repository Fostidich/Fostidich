set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus
set number

highlight LineNr guifg=#555555

autocmd BufWritePre * %s/\s\+$//e

call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

syntax on
set background=dark
colorscheme gruvbox

command! S source
command! T w | !typos %
command! C e $MYVIMRC

nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+1<CR>
nnoremap <Leader>f $
nnoremap <Leader>s 0
nnoremap <Leader>e G
nnoremap <Leader>i gg
nnoremap <Leader>w :e %:p:h<CR>
nnoremap <Leader>q :q<CR>
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>

inoremap <A-Up> <Esc>:m-2<CR>a
inoremap <A-Down> <Esc>:m+1<CR>a
inoremap <C-f> <C-o>$
inoremap <C-s> <C-o>0<Left>
inoremap <C-Right> <C-o>e<Right>
inoremap <C-CR> <C-o>$<CR>
