execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd vimenter * NERDTree
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
