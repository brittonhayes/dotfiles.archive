call plug#begin('~/.vim/plugged')

Plug 'honza/vim-snippets'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dag/vim-fish'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Initialize plugin system
call plug#end()
