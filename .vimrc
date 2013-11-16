" pathogen stuff
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

let mapleader = ","

runtime macros/matchit.vim

""
"" Basic Setup
""
set guioptions-=T " hide toolbar"
syntax on
filetype plugin indent on
set encoding=utf-8    	" Set default encoding to UTF-8

"" ruby doc and jquery doc api
let g:ruby_doc_command='open'
let g:jquery_doc_command='open'

"" rspec syntax highlight
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

""
"" Backup and swap
""
set nobackup
set nowritebackup
set noswapfile

""
"" visual
""
set visualbell t_vb=
set nu			" Show line numbers
set wrap		" Wrap lines
set ruler		" Show line and column number
set t_co=256
set background=dark

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

""
"" Whitespace
""
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots

""" Searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" cmdline completion
""
set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set formatoptions-=o "dont continue comments when pushing o/O

"" My mappings
""
nnoremap <F2> :NERDTreeToggle<ENTER>
nnoremap <F3> :nohls<ENTER>
nnoremap <F4> :Gstatus<ENTER>
nnoremap <F5> :set spell! spelllang=fr<ENTER>
nnoremap <F6> :set spell! spelllang=en<ENTER>
nnoremap <F7> :set spell! spelllang=it<ENTER>

noremap ;; :%s:::g<Left><Left><Left>
noremap ;' :%s:::cg<Left><Left><Left><Left>

nnoremap ; :

" make Y consistent with C and D
nnoremap Y y$

" TextMate like shortcuts

"  CTRL+L = =>
inoremap <C-L> <SPACE>=><SPACE>

" this works just as META+ENTER in textmate
inoremap <S-CR> <ESC>o

" nerdtree
"  open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

let g:AutoCloseProtectedRegions = ["Comment", "String", "Character"]
