" Pathogen: manage plugins in separate directories by manipulating runtimepath.
" Note: 'filetype off' when already off causes a non-zero exit code from vim.
runtime bundle/vim-pathogen/autoload/pathogen.vim

" For pathogen.vim: auto load all plugins in .vim/bundle
let g:pathogen_disabled = []
if !has('gui_running')
   call add(g:pathogen_disabled, 'powerline')
endif
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" SET COLOR SCHEME
:colorscheme jellybeans


" General Settings
" -----------------------
" All the small things(tm)
" -----------------------
set nocompatible	" not compatible with the old-fashion vi mode
set number              " show line numbers
set bs=2		" allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set autoread		" auto read when file is changed from outside
set numberwidth=4       " line numbering takes up to 4 spaces
set hlsearch		" search highlighting
set background=dark     " Set syntax highlighting
set clipboard=unnamed	" yank to the system register (*) by default
set showmatch		" Cursor shows matching ) and }
set showmode		" Show current mode
set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmenu            " wild char completion menu
set wildmode=list:longest,list:full
set mouse=a         " enable mouse
set ls=2            " always show status line
set scrolloff=5     " keep 5 lines when scrolling
set showcmd         " display incomplete commands
set showmode        " display the current mode
set laststatus=2    " show last status?
set linebreak       " linebreaks
set wrap            " set wrap for lines
set title           " show title in the console title bar
set sm              " show matching braces
set ttyfast         " smoother changes
set shortmess=atI   " abbreviate messages
set nostartofline   " don't jump to first character when paging
set undolevels=200
set hls
set showtabline=2
set hidden
set cursorline      " Cursor line to see where my cursor is, smart.
set t_Co=256
" ----------------------
" ignore these files while expanding wild chars
" ----------------------
set wildignore=*.o,*.class,*.pyc 
set autoindent		" auto indentation
set incsearch		" incremental search
set nobackup		" no *~ backup files
set copyindent		" copy the previous indentation on autoindenting
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab		" insert tabs on the start of a line according to context
" ----------------------
" disable sound on errors
" ----------------------
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" ----------------------
" tabs setting
" ----------------------
set expandtab        "replace <TAB> with spaces
set softtabstop=2 
set shiftwidth=2 
set tabstop=2
" ----------------------
" status line
" ----------------------
set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \ 
set statusline+=\ \ \ [%{&ff}/%Y] 
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L
"--------------------------------------------------------------------------- 
" ENCODING SETTINGS
"--------------------------------------------------------------------------- 
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

" ----------------------
" USEFUL FUNCTIONS
" ----------------------


" ----------------------
" Function with ENCODING SETTINGS
" ----------------------
fun! ViewUTF8()
	set encoding=utf-8                                  
	set termencoding=big5
endfun

fun! UTF8()
	set encoding=utf-8                                  
	set termencoding=big5
	set fileencoding=utf-8
	set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! Big5()
	set encoding=big5
	set fileencoding=big5
endfun

" ----------------------
" Function with status line
" ----------------------
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction
" ----------------------
" Restore cursor to file position in previous editing session
" ----------------------
set viminfo='10,\"100,:20,%,n~/.viminfo
autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" ----------------------
" ----------------------
" ----------------------

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
syntax on		" syntax highlight

"--------------------------------------------------------------------------- 
" USEFUL SHORTCUTS
"--------------------------------------------------------------------------- 
" set leader to ,
let mapleader=","
let g:mapleader=","

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv

" Travel through buffurs
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Map ,e to open files in the same directory as the current file
map <leader>e :e <C-R>=expand("%:h")<cr>.\

" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

"replace the current word in all opened buffers
map <leader>r :call Replace()<CR>


" ----------------------
" FILETYPE OPERATIONS
" ----------------------
" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType Makefile set noexpandtab
" ----------------------
" HTML
" ----------------------
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType htmldjango setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType xhtml setlocal tabstop=2 shiftwidth=2 softtabstop=2
" ----------------------
" Javascript
" ----------------------
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType less setlocal ai
autocmd FileType less setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2
" ----------------------
" CSS
" ----------------------
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd BufNewFile,BufRead *.scss             set ft=scss.css  " scss
autocmd BufNewFile,BufRead *.sass             set ft=sass.css  " sass
" ----------------------
" python
" make Python follow PEP8 (http://www.python.org/dev/peps/pep-0008/)
" ----------------------
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType python set softtabstop=4 tabstop=4 shiftwidth=4
autocmd FileType less set softtabstop=2 tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead admin.py setlocal filetype=python.django
autocmd BufNewFile,BufRead urls.py setlocal filetype=python.django
autocmd BufNewFile,BufRead models.py setlocal filetype=python.django
autocmd BufNewFile,BufRead views.py setlocal filetype=python.django
autocmd BufNewFile,BufRead settings.py setlocal filetype=python.django
autocmd BufNewFile,BufRead forms.py setlocal filetype=python.django
" ----------------------
" ruby
" ----------------------
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
autocmd BufNewFile,BufRead *.ru setfiletype ruby
autocmd BufNewFile,BufRead Gemfile setfiletype ruby
autocmd BufNewFile,BufRead Capfile setfiletype ruby
" ----------------------
" others
" code indentation and file detection
" ----------------------
autocmd BufNewFile,BufRead .vimrc setlocal tabstop=2 shiftwidth=2 softtabstop=2

" use syntax complete if nothing else available
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
              \	if &omnifunc == "" |
              \		setlocal omnifunc=syntaxcomplete#Complete |
              \	endif
endif

set cot-=preview "disable doc preview in omnicomplete

" Use modeline overrides
set modeline
set modelines=3


"--------------------------------------------------------------------------- 
" PLUGIN SETTINGS
"--------------------------------------------------------------------------- 


" --- EasyMotion
"let g:EasyMotion_leader_key = '<Leader>m' " default is <Leader>w
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" --- Powerline
let g:Powerline_symbols = 'fancy'

" --- NERDTree
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1


"--------------------------------------------------------------------------- 
" PLUGIN BINDING
"--------------------------------------------------------------------------- 
" Useful keyboard-shortcuts
if has("mac")
  map <D-2> :NERDTreeToggle<CR>
  map <D-3> :TagbarToggle<CR>
  map <D-4> :noh<CR>
  map <D-5> :GundoToggle<CR>
  map <D-6> :JSLintToggle<CR>
  map <D-j> gj
  map <D-k> gk
else
  map <F2> :NERDTreeToggle<CR>
" map <F3> :TagbarToggle<CR>
" map <F4> :noh<CR>
" map <F5> :GundoToggle<CR>
" map <F6> :JSLintToggle<CR>
endif

" shortcut to change to htmldjnago
nmap <leader>d :set ft=htmldjango<CR>