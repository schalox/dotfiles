set autoindent
set background=dark
set backspace=eol,start,indent
set expandtab
set hlsearch
set list listchars=tab:»·,trail:·
set number
set ruler
set shiftwidth=4
set showcmd
set t_Co=256
set tabstop=4
set textwidth=80
set wildmenu

" turn on indenting and syntax highlighting
filetype plugin indent on
syntax enable
" use 72 character lines in mails
autocmd Filetype mail set textwidth=72
" disable Ex mode
map Q <Nop>

colorscheme solarized
