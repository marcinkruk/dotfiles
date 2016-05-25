execute pathogen#infect()	

set exrc "
set secure

set t_Co=256

let delimitMate_expand_cr=1
let delimitMate_expand_space=1

set cindent
set shiftwidth=4
set softtabstop=4
set tabstop=4

set rnu	"relative line numbering"
set nu	"line numbering"

set formatoptions+=r "comment expansion"
set fo+=j	"for smart comment expansion"


"let g:solarized_termcolors=256
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

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

