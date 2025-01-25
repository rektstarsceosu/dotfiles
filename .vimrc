" some of the configuration is taken from
" check it out: https://github.com/amix/vimrc
"

" ######## visual
"
" Enable filetype plugins
filetype plugin on
filetype indent on
" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * silent! checktime
let $LANG='en'
set langmenu=en
"colors
colo vim
highlight StatusLine ctermfg=Grey ctermbg=Black guifg=#808080 guibg=#000000
highlight StatusLineNC ctermfg=Yellow ctermbg=Black guifg=#FFFF00 guibg=#000000
" Always show current position
set ruler
" Height of the command bar
set cmdheight=1
" A buffer becomes hidden when it is abandoned
set hid
" Highlight search results
set hlsearch
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" Show relative numbers
set number relativenumber
set background=dark



" ######### behaviour
" Sets how many lines of history VIM has to remember
set history=500
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
"command! Wq execute 'w !sudo tee % > /dev/null' <bar> edit! <bar> q
" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Makes search act like search in modern browsers
set incsearch
" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic
" No annoying sound on errors
set noerrorbells
"set novisualbell
set t_vb=
" Enable syntax highlighting
syntax enable
" Set regular expression engine automatically
set regexpengine=0
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git etc. anyway...
"set nobackup
"set nowb
"set noswapfile
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
set lbr
"set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" Additional mappings
set clipboard=unnamedplus
"noremap p "+p
"noremap y "+y
set ft=xxd

" ############## keybinds and commands
" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !pkexec tee % > /dev/null' | edit!
" get me outta here
command! Q qall!
command! Xr %!xxd
command! Xw %!xxd -r

" quick forward and backward
nnoremap u :undo<CR> 
nnoremap r :redo<CR>

"some 3rd world country quirks
noremap <Char-0x131> i 
noremap <Char-0x130> i 
" ı and İ

" forward and backward word
nnoremap <C-right> w
inoremap <C-right> <C-o>w

nnoremap <C-left> b
inoremap <C-left> <C-o>b

" idon't know why i added this 
inoremap <C-H> <C-W>

" fast scrolling with C and S
nnoremap <C-Up> 10k
inoremap <C-Up> <C-o>10k

nnoremap <C-Down> 10j
inoremap <C-Down> <C-o>10j

nnoremap <S-Up> 4k
inoremap <S-Up> <C-o>4k

nnoremap <S-Down> 4j
inoremap <S-Up> <C-o>4j

" make word kill more predictable with arrows 
nnoremap <C-S-Right>  bvw
nnoremap <C-S-Left> wvb
vnoremap <C-S-Left>  b
vnoremap <C-S-Right> w
