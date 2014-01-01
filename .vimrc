filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"call pathogen#infect()

syntax enable
set background=dark
"set background=light
colorscheme solarized

" makes solarized look correct in vim within gnome terminal
" after applying git://github.com/sigurdga/gnome-terminal-colors-solarized.git
set t_Co=16

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
" set lbr
" set tw=500

set ai "Auto indent
" disable Smart indent it causes problems with Python comments
set nosmartindent
set wrap "Wrap lines

"highlights lines longer than 80 characters in python files
"TODO change to solarized colour
au FileType python highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au FileType python match OverLength /\%80v.\+/

"run flake8 on save
autocmd BufWritePost *.py call Flake8()


" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=/usr/local/go/misc/vim
filetype plugin indent on
syntax on

" reformat go files on save
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" compile go files on save
let g:golang_onwrite = 1
let g:golang_inline_highlight = 1
autocmd FileType go compiler go
