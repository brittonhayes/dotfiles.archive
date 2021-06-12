:set number
set autowrite

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'

Bundle 'gmarik/vundle'
Bundle 'dag/vim-fish'

call vundle#end()
filetype plugin indent on

" setup snippet completion
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" GO configurations
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
let g:go_fmt_command = "goimports"
" End golang configuration


if &shell =~# 'fish$'
    set shell=sh
endif
