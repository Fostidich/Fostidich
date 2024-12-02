call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim'
call plug#end()

colorscheme gruvbox
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus
set number
set updatetime=300
set background=dark
set completeopt=menuone,noinsert,noselect

autocmd CursorHold * silent call CocActionAsync('diagnosticRefresh')
autocmd BufWritePre * %s/\s\+$//e

command! S w | source %
command! C e $MYVIMRC
command! T terminal
command! Typos w | !typos %

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
nnoremap <C-Del> "_dd

inoremap <A-Up> <Esc>:m-2<CR>a
inoremap <A-Down> <Esc>:m+1<CR>a
inoremap <C-f> <C-o>$
inoremap <C-s> <C-o>0<Left>
inoremap <C-Right> <C-o>e<Right>
inoremap <C-CR> <C-o>$<CR>
inoremap <silent><expr> <C-Space> coc#refresh()
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap w b
vnoremap e <Down>
vnoremap r <Up>
vnoremap t w

tnoremap <Esc> <C-\><C-n>

