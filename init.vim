call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'ntpeters/vim-better-whitespace'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
call plug#end()

" Load functions
runtime functions.vim
" Load plugins
runtime plugins.vim
" Load mappings
runtime mappings.vim

" Adding my own config options
set relativenumber
set background=dark
