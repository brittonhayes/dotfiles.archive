:set number

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'gmarik/vundle'
Bundle 'dag/vim-fish'

call vundle#end()
filetype plugin indent on

if &shell =~# 'fish$'
    set shell=sh
endif
