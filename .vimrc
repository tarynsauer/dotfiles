execute pathogen#infect()
syntax on
filetype plugin indent on
"autocmd vimenter * NERDTree
autocmd FileType ruby compiler ruby
syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set t_Co=256
colo molokai

set guifont=Menlo\ Regular:h15
set noswapfile
set nowrap
set scrolloff=2
set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible
set number
set autoindent
set smartindent
set tw=80
set fo+=t
set backspace=indent,eol,start
set clipboard=unnamed
set incsearch
set hlsearch
set noerrorbells
set wildmenu
set wildmode=list:longest

let g:ctrlp_map='<c-p>'
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let g:vimclojure#FuzzyIndent = 1
let mapleader = ","
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

map <C-J> <C-W><Down><C-W>_
map <C-K> <C-W><Up><C-W>_
map <C-L> <C-W><Right><C-W>_
map <C-H> <C-W><Left><C-W>_

let g:rbpt_colorpairs = [
  \ [ '13', '#6c71c4'],
  \ [ '5',  '#d33682'],
  \ [ '1',  '#dc322f'],
  \ [ '9',  '#cb4b16'],
  \ [ '3',  '#b58900'],
  \ [ '2',  '#859900'],
  \ [ '6',  '#2aa198'],
  \ [ 'red', 'firebrick3'],
  \ ]

" Remove all trailing whitespace
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
