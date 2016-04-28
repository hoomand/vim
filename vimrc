version 7.0

let mapleader=","

""" Call pathogen
execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set autoindent
set backspace=indent,eol,start
set cindent " set smartindent
set cmdheight=2
set nocursorcolumn
set cursorline
set errorformat=\"../../%f\"\\,%*[^0-9]%l:\ %m
set noexpandtab
set tabstop=4
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nolist
set listchars=tab:>-,trail:-
set mouse=c
set nowrap
set number
set ruler
set scrolloff=5
set shiftwidth=4
set showcmd
set showmatch
set smarttab
set statusline=%F%m%r%h%w\ [%{&ff}]\ %y\ [CHR=%b/0x%B]\ [POS=%04l,%03c(%03v)]\ [%p%%]\ [LEN=%L]\ %{fugitive#statusline()}
set t_Co=256
set tags=tags;/
set virtualedit=block
set wrap
" Store all swp files in a central directory
set backupdir=~/.vim/vimbackup//
set directory=~/.vim/vimbackup//
syntax on

highlight   CursorColumn  term=NONE    cterm=none ctermbg=232
highlight   CursorLine    term=NONE    cterm=bold ctermbg=8
highlight   FoldColumn                            ctermbg=8  ctermfg=14
highlight   Folded                                ctermbg=8  ctermfg=14
highlight   Search        term=reverse cterm=bold ctermbg=11 ctermfg=0
highlight   Visual        term=NONE    cterm=bold ctermbg=10 ctermfg=8
"

" :help last-position-jump
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Fix Laravel blade auto indent
autocmd BufNewFile,BufRead *.blade.php set ft=html | set ft=phtml | set ft=blade

nnoremap <C-L> :noh<CR><C-L>
inoremap jj <Esc>
nnoremap <Leader>r :source ~/.vimrc<CR>
nnoremap <Leader><Leader>r :e ~/.vimrc<CR>

" Save and run openned file by hitting F9 if it's a python script
autocmd FileType python nnoremap <buffer> <F9> :w<CR>:!clear;python %<CR>

nmap <F1> <Esc>
imap <F1> <Esc>

if &term =~ '256color'
    set t_ut=
endif

" ctrlp plugin settings
" Set no max file limit
let g:ctrlp_max_files = 0
" 
let g:ctrlp_cmd = 'CtrlPMixed'
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0
" " Ignore these directories
set wildignore+=*/vendor/**

" Define Ctrl-B shortcut to open buffer select
nmap <silent> <C-F> :TSelectBuffer<cr>

""""""""""""""""""" NERDTree """"""""""""""""""""""""""""
" Define ,t to open nerdtree
nmap <silent> <Leader>t :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\.pyc$']

" RSpec.vim mappings
map <Leader><Leader>t :call RunCurrentSpecFile()<CR>
map <Leader><Leader>s :call RunNearestSpec()<CR>
map <Leader><Leader>l :call RunLastSpec()<CR>
map <Leader><Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!rspec --drb {spec}"

colorscheme xoria256
