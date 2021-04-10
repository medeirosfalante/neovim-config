call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'tomlion/vim-solidity'
Plug 'edersonferreira/dalton-vim'
"Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Autocomplete Langs COC.NVIM
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

 "Files Search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

 "NerdTree
    Plug 'preservim/nerdtree'

"Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()
set number
set termguicolors
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_theme='dalton'
nnoremap <C-n> :NERDTreeToggle<CR>
