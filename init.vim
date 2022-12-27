" sets line numbers with relative line numbers (shows current line's number,and how far away other lines are)
:set number
:set relativenumber
" enables mouse mode
:set mouse=a
" tries to align tabs on the same lines
:set smarttab
" sets horizontal splits to always go below the current window; also could use :bel
:set splitbelow
" lets you do naughty stuff
:set nocompatible
" fuzzy finder thingie from weird vim guy video
:set path +=**
" enables autocomplete
:set wildmenu
" supposedly turns off word wrap
:set nowrap
" turns on coloring for different syntaxes vim understands
:syntax enable

" vertical splits a file explorer in the current dir
nmap <F2> :vsp <CR>:e .<CR>
" horizontal splits a terminal that is 30 lines tall
nmap <F3> :sp <CR>:resize 30<CR>:term<CR>

" remaps the escape sequence to exit terminal mode to Esc instead of Ctrl \ + Ctrl N
:tnoremap <Esc> <C-\><C-n>
