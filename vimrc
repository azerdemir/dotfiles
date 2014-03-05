set nocompatible
call pathogen#infect()

filetype on
filetype indent on
filetype plugin on

set ignorecase
set hlsearch
set autoindent
set fileencoding=utf-8
set encoding=utf-8
set backspace=indent,eol,start
set ts=4 sts=4 sw=4 expandtab

set smartcase
set gdefault
set incsearch
set number

set t_Co=256

syntax enable
set background=dark
colorscheme solarized

set cursorline
set colorcolumn=120

" Statusline {{{
hi User1 ctermbg=white    ctermfg=black   guibg=#89A1A1 guifg=#002B36
hi User2 ctermbg=red      ctermfg=white   guibg=#aa0000 guifg=#89a1a1

function! GetCWD()
    return expand(":pwd")
endfunction

function! IsHelp()
    return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
    return expand("%:t")==''?'<none>':expand("%:t")
endfunction

set statusline=%1*[%{GetName()}]\ 
set statusline+=%<pwd:%{getcwd()}\ 
set statusline+=%2*%{&modified?'\[+]':''}%*
set statusline+=%{IsHelp()}
set statusline+=%{&readonly?'\ (ro)\ ':''}
set statusline+=[
set statusline+=%{strlen(&fenc)?&fenc:'none'}\|
set statusline+=%{&ff}\|
set statusline+=%{strlen(&ft)?&ft:'<none>'}
set statusline+=]\ 
set statusline+=%=
set statusline+=c%c
set statusline+=,l%l
set statusline+=/%L\ 

set laststatus=2

" }}}

