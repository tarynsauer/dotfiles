et nocompatible
set noswapfile
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Raimondi/delimitMate'
Bundle 'vim-scripts/VimClojure'
Bundle 'tComment'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle 'tpope/vim-fireplace'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'kovisoft/slimv'
Bundle 'guns/vim-clojure-static'
Bundle 'flazz/vim-colorschemes'
Bundle 'tpope/vim-endwise'
Bundle 'elixir-lang/vim-elixir'

filetype plugin indent on
syntax on
set t_Co=256
colo summerfruit256

set incsearch
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
set wrap
set lines=35 columns=150
set backspace=indent,eol,start

let mapleader=','
let g:ctrlp_map='<c-p>'
let g:NERDTreeWinSize=25
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let g:vimclojure#FuzzyIndent = 1

map <C-J> <C-W><Down><C-W>_
map <C-K> <C-W><Up><C-W>_
map <C-L> <C-W><Right><C-W>_
map <C-H> <C-W><Left><C-W>_

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nmap oo o<Esc>k
nmap OO O<Esc>j
nmap <leader>ne :NERDTree<Enter>
nmap <leader>li :Loremipsum

let g:rbpt_colorpairs = [
  \ [ '13', '#6c71c4'],
  \ [ '5',  '#d33682'],
  \ [ '1',  '#dc322f'],
  \ [ '9',  '#cb4b16'],
  \ [ '3',  '#b58900'],
  \ [ '2',  '#859900'],
  \ [ '6',  '#2aa198'],
  \ [ '4',  '#268bd2'],
  \ ]

" Shortcuts for jumping to first/last line of paragraph
:map t {j
:map n }k

" Enable rainbow parentheses for all buffers
augroup rainbow_parentheses
  au!
  au VimEnter * RainbowParenthesesActivate
  au BufEnter * RainbowParenthesesLoadRound
  au BufEnter * RainbowParenthesesLoadSquare
  au BufEnter * RainbowParenthesesLoadBraces
augroup END
