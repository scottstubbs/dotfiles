" Miscellaneous
set hidden
set history=1000
set number
set scrolloff=3
set undolevels=1000
set virtualedit=all
set visualbell

" Syntax highlighting
if has("gui_running") || &t_Co > 2
  syntax on
endif

" Color scheme
if has("gui_running") || &t_Co >= 256
  colorscheme railscasts
endif

" Better search
set hlsearch
set incsearch
set ignorecase
set smartcase
" Temporarily turn off search highlighting.
nmap <silent> <leader>n :silent :nohlsearch<CR>

" Enable mouse
set mouse=vin

" Default tab stop
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set smarttab
set backspace=indent,eol,start

" Store backups and swap files some place out of the way.
set directory=/tmp
set backupdir=/tmp

" Encoding
set encoding=utf-8
set termencoding=utf-8

" Status line
set laststatus=2
set statusline=%F\ %y%m%r%=%-13.(%lL,\ %cC%)\ %P

" Key mappings
map <F5> :buffers<CR>:buffer 
map <F6> :bprev<CR>
map <F7> :bnext<CR>
" Fast window resizing.
if bufwinnr(1)
  map <S-F5> <C-W>+
  map <S-F6> <C-W>-
  map <S-F7> <C-w><
  map <S-F8> <C-w>>
endif

" Filetype detection.
filetype on

" Filetype identation
autocmd BufEnter *.js set softtabstop=4|set shiftwidth=4
autocmd BufEnter *.c  set softtabstop=4|set shiftwidth=4

" Edit file using current path.
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
