" ================ General Config ====================
syntax on
set number                      "Print the line number in front of each line
set numberwidth=5               "Minimal number of columns to use for the line number
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show (partial) command in the last line of the screen
set showmode                    "If in Insert, Replace or Visual mode put a message on the last line.
set autoread                    "When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again
set ruler                       "Display the cursor position on the last line of the screen or in the status line of a window

"set wrap
"set whichwrap=b,s,h,l,<,>,~,[,] 

set directory=~/.vim/tmp     "List of directory names for the swap file, separated with commas.
set fileformats=unix,dos,mac "This gives the end-of-line (<EOL>) formats that will be tried 
"set iskeyword+=_,$,@,%,#
"set mouse=a

"filetype plugin on
filetype indent on

" ================ Beeps & Notifications =================
"set gcr=a:blinkon0      "Disable cursor blink
set visualbell          "No sounds
set noerrorbells        "Don't Ring the bell (beep or screen flash) for error messages
"set vb t_vb=

" ================ Search Settings  =================
set ignorecase       "Use case insensitive search
set smartcase        " except when using capital letters
set hlsearch         "Highlight searches by default
set incsearch        "Find the next match as we type the search

" ================ Indentation ======================
set autoindent
set smartindent
set copyindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" ================ Folds ============================
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
"set foldenable

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Scrolling ========================
set scrolloff=5         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Configure Vundle ================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

filetype plugin indent on

" ================ Completion =======================
set wildmenu
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmode=list:longest

" ================ MISC =======================
au BufNewFile,BufRead *.module set filetype=php
au BufNewFile,BufRead *.install set filetype=php
au BufNewFile,BufRead *.test set filetype=php





" Map <C-L> (redraw screen) to also turn off search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>
