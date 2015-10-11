" allow backspacing over everything
set backspace=eol,start,indent
" higlight the current line
set cursorline
" highlight search results
set hlsearch
" replace tabs and trailing spaces with symbols
set list listchars=tab:»·,trail:·
" show row numbers
set number
" show the line and column numbers in the statusline
set ruler
" show command in the statusline
set showcmd
" set the line length
set textwidth=80
" visual autocompletion for commands
set wildmenu

" tabs and spaces
" copy indent from current line when starting a new line
set autoindent
" use spaces instead of tabs
set expandtab
" number of spaces to insert when using >> or <<
set shiftwidth=4
" number of spaces to insert when pressing <Tab>
set softtabstop=4
" number of spaces in a tab-character
set tabstop=4

" colors
set background=dark
" set number of colors
set t_Co=256
colorscheme solarized
" turn on filetype-based indenting and syntax highlighting
filetype plugin indent on
" enable syntax highlighting
syntax enable

" treat .md-files as markdown
" https://stackoverflow.com/a/23279293
autocmd BufNewFile,BufRead *.md set filetype=markdown
" use 72 character lines in mails
autocmd Filetype mail set textwidth=72
" disable Ex mode
map Q <Nop>
" toggle search highlighting
noremap <F4> :set hlsearch! hlsearch?<CR>

" local config
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
