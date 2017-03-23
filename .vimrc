execute pathogen#infect()

set exrc "
set secure

set t_Co=256

let delimitMate_expand_cr=1
let delimitMate_expand_space=1

set cindent
set shiftwidth=8
set softtabstop=8
set tabstop=8

set rnu	"relative line numbering"
set nu	"line numbering"

set formatoptions+=r "comment expansion"
set fo+=j	"for smart comment expansion"


let g:solarized_termcolors=256
syntax enable
set bg=dark
colorscheme solarized

let &colorcolumn="81,".join(range(81,999),",")


"highlight LineNr ctermfg=grey
set cursorline
"hi CursorLine   guibg=Grey40


"autocmd vimenter * NERDTree
set showcmd	"shows keystrokes in normal mode at the bottom of the screen"
set showtabline=2 "shows tabs at the top of the screen"
set statusline=2 "statusline at the bottom always visible"

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" terminal window transparency
hi Normal ctermbg=none

set incsearch " highlights searched string while typing "
set laststatus=2

"ctrl + j to break line in normal mode
nnoremap <NL> i<CR><ESC>

" search results appear in the middle of the screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap <C-]> <C-]>z<CR>

set nowrap
set scrolloff=1

" highlight extra whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace:
match ExtraWhitespace /\s\+$/
" Show trailing whitespace and spaces before a tab:
match ExtraWhitespace /\s\+$\| \+\ze\t/

" Tabs adjustments
nnoremap <C-W>t :tabedit<CR>:Ex<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" Go to tag in a new tab instead of a new split.
nnoremap <C-w>] <C-w>]<C-w>Tz<CR>
