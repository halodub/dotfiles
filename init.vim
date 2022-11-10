:set number
:set relativenumber
:set mouse=a
:set smarttab
:set splitbelow
:set nocompatible
:syntax enable
:filetype plugin on



call plug#begin()
	Plug 'https://github.com/vim-airline/vim-airline'
	Plug 'https://github.com/preservim/nerdtree'
	Plug 'https://github.com/preservim/tagbar'
	Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
	Plug 'lervag/vimtex'
	Plug 'Konfekt/FastFold'
	Plug 'matze/vim-tex-fold'

call plug#end()

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nmap <F4> :sp term://bash

let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'

augroup NCM2
  autocmd!
  " some other settings...
  " uncomment this block if you use vimtex for LaTex
  autocmd Filetype tex call ncm2#register_source({
            \ 'name': 'vimtex',
            \ 'priority': 8,
            \ 'scope': ['tex'],
            \ 'mark': 'tex',
            \ 'word_pattern': '\w+',
            \ 'complete_pattern': g:vimtex#re#ncm2,
            \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
            \ })
augroup END

" file finding
:set path+=**
" autocomplete
:set wildmenu
" ctags
" :command! MakeTags !ctags -R .
