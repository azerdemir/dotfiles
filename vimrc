set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'fatih/vim-go'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
call vundle#end()

filetype plugin indent on

" General settings {{{
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
set list
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•
set number
set t_Co=256
syntax enable
set background=dark
colorscheme molokai
set cursorline
set colorcolumn=120
set timeoutlen=500 ttimeoutlen=0 "Timeout value to fix normal mode delay
" }}}

" Key bindings {{{
let mapleader = ","
" }}}

" vim powerline statusline [disabled] {{{
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"let g:Powerline_symbols = 'fancy'
"set fillchars+=stl:\ ,stlnc:\
" }}}

" Statusline {{{
hi User1 ctermbg=white ctermfg=black guibg=#89A1A1 guifg=#002B36
hi User2 ctermbg=red ctermfg=white guibg=#aa0000 guifg=#89a1a1

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

" vim-go plugin settings {{{
let g:go_disable_autoinstall=1
let g:go_gocode_bin="$GOBIN/gocode"
let g:go_goimports_bin="$GOBIN/goimports"
let g:go_godef_bin="$GOBIN/godef"
let g:go_oracle_bin="$GOBIN/oracle"
let g:go_golint_bin="$GOBIN/golint"
let g:go_errcheck_bin="$GOBIN/errcheck"
" }}}

" UltiSnips trigger configuration {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" }}}

" vim: foldmethod=marker foldmarker={{{,}}}
