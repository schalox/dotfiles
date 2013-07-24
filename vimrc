filetype plugin indent on
syntax enable
set autoindent
set backspace=eol,start,indent
set expandtab
set hlsearch
set list listchars=tab:»·,trail:·
set number
set shiftwidth=4
set showcmd
set t_Co=256
set tabstop=4
set textwidth=80
set wildmenu
set background=dark
colorscheme solarized

autocmd Filetype mail set textwidth=72
"autocmd Filetype mail 0read ~/.vim/mail.tmpl

" disable Ex mode
map Q <Nop>
