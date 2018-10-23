" set from https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" editorconfig
Plugin 'editorconfig/editorconfig-vim'

" colorscheme base16
Plugin 'chriskempson/base16-vim'

" colorscheme palenight
Plugin 'drewtempelmeyer/palenight.vim'

" Nerdcommenter
Plugin 'scrooloose/nerdcommenter'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" specify where windows split to 
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" " Enable folding
" set foldmethod=indent
" set foldlevel=99
" " Enable folding with the spacebar
" nnoremap <space> za

" " PEP8 whitespaces
" au BufNewFile,BufRead *.py
    " \ set tabstop=4
    " \ set softtabstop=4
    " \ set shiftwidth=4
    " \ set expandtab
    " \ set autoindent
    " \ set fileformat=unix

" set guifont=DejaVu_Sans_Mono

" showing bad white space
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" my additions
if has('mouse')
    set mouse=a
endif

autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

set number
set rnu
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=2
set belloff=all

" set undofile " Maintain undo history between sessions
" set undodir=~/.vim/undodir

set clipboard=unnamedplus
"set paste
" set go+=a

inoremap jk <Esc>

set timeoutlen=2000

execute pathogen#infect()
filetype plugin indent on
syntax on

" wolfpack COLORSCHEME
" colorscheme wolfpack
" highlight Visual cterm=reverse ctermbg=NONE
" highlight Normal ctermbg=NONE
" highlight nonText ctermbg=NONE
" highlight LineNr ctermbg=NONE
" highlight ColorColumn ctermbg=0

" palenight COLORSCHEME
set background=dark
colorscheme palenight

" base16 COLORSCHEME
" colorscheme base16-flat
" colorscheme sahara

"--------- Commenting ---------------
"Space before comments
let g:NERDSpaceDelims=1
let g:NERDRemoveAltComs=0
" let g:NERDUsePlaceHolders=0
" let g:NERDLplace=""
" let g:NERDRplace=""
" let g:NERDLplace="/*"
" let g:NERDRplace="*/"
"
" macro to fix shit NeRDCommenter functionality..
let @r=":sno/[>/\\/*/g | :sno/<]/*\\//g \<CR>"
"
"Paragraph commentary
map <leader>cp :<C-U>execute "norm v".v:count1."ap"<CR>\cc
map <leader>up :<C-U>execute "norm v".v:count1."ap"<CR>\cu
map <leader>tp :<C-U>execute "norm v".v:count1."ap"<CR>\ci

" --------- LATEX Specific Options --------- 
"Wrap sentences
nnoremap <M-w> gq)
autocmd Filetype tex set wrap linebreak nolist

" --------- Python Specific Options --------- 
autocmd Filetype python let g:NERDSpaceDelims=0

"Remove all trailing whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
" command WWW :execute ':silent w !sudo tee % > /dev/null' | :edit!
" map w!! execute 'silent! write !sudo tee % >/dev/null %' <bar> edit!

" Remap the tic mark so it jumps to the exact column and line when going back.
nnoremap ' `
nnoremap ` '

" Make the scrolling a little faster.
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

command WQ wq
command Wq wq
command W w
command Q q

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" Set the gui to look great.
map <silent> <M-m> :if &guioptions =~# 'T' <Bar>
	\set guioptions-=T <Bar>
	\set guioptions-=m <bar>
\else <Bar>
	\set guioptions+=T <Bar>
	\set guioptions+=m <Bar>
\endif<CR>

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"
if (has("termguicolors"))
 set termguicolors
endif
" colorscheme base16-black-metal
" colorscheme base16-black-metal-burzum
colorscheme base16-black-metal-dark-funeral
