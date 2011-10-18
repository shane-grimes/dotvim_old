call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()
syntax on
filetype plugin indent on

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim
 
augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  augroup END

set nocompatible
"------------------------
set cf " Enable error files & error jumping.
set clipboard=unnamed "Yanks go on clipboard instead.
set history=256 "Number of things to remember in history.
set autowrite " Writes on make/shell commands
set ruler " Ruler on
set nu " Line numbers on
set nowrap " Line wrapping off
set timeoutlen=1000  " Time to wait after ESC (default causes an annoying delay)
" colorscheme desert  " Uncomment this to set a default theme

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
" set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
" set novisualbell  " No blinking .
" set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes
"-------------------------
winsize 104 72
"colorscheme desert
set splitright
set splitbelow
set go-=m
set go-=T

set backupdir=~/.vim_backups,.
set directory=~/.vim_backups,.
