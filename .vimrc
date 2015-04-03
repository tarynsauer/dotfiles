execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd vimenter * NERDTree
syntax on
set t_Co=256
colo molokai

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

set lines=100 columns=200
set incsearch
set hlsearch
set noerrorbells

let mapleader=','
let g:ctrlp_map='<c-p>'
let g:NERDTreeWinSize=30
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let g:vimclojure#FuzzyIndent = 1
let mapleader = ","

map <C-J> <C-W><Down><C-W>_
map <C-K> <C-W><Up><C-W>_
map <C-L> <C-W><Right><C-W>_
map <C-H> <C-W><Left><C-W>_

nmap <leader>ne :NERDTree<cr>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <leader>at :SwitchARoo<cr>
nnoremap <leader>as :SwitchARooHorizontal<cr>
nnoremap <leader>av :SwitchARooVertical<cr>
nnoremap <leader>aj :SwitchToJavascript<cr>

nmap oo o<Esc>k
nmap OO O<Esc>j

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

" Enable rainbow parentheses for all buffers
 augroup rainbow_parentheses
 au!
 au VimEnter * RainbowParenthesesActivate
 au BufEnter * RainbowParenthesesLoadRound
 au BufEnter * RainbowParenthesesLoadSquare
 au BufEnter * RainbowParenthesesLoadBraces
 au BufNewFile,BufRead *.ejs set filetype=html
 augroup END

" Remove all trailing whitespace
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
