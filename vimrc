" =======================================
" Who: Vishwas Sharma
" What: _vimrc of better life
" =======================================

set nocompatible	" not compatible with the old-fashion vi mode
" Note: 'filetype off' when already off causes a non-zero exit code from vim.
filetype off

" ----------------------
" Pathogen
" ----------------------
" Pathogen: manage plugins in separate directories by manipulating runtimepath.
" runtime bundle/vim-pathogen/autoload/pathogen.vim

" For pathogen.vim: auto load all plugins in .vim/bundle
" let g:pathogen_disabled = []
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

" ----------------------------------------
" Vundle
" ----------------------------------------
set rtp+=$HOME/vimfiles/bundle/vundle/
call vundle#rc()


" let Vundle manage Vundle
" required !
Bundle "gmarik/vundle"

" My Bundles here:
"
" original repos on github

Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'robhudson/snipmate_for_django'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-haml'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'fholgado/minibufexpl.vim'

" ----------------------
" THEMES
" SET COLOR SCHEME
" ----------------------
:colorscheme jellybeans
" ----------------------

" ----------------------
" General Settings
" -----------------------
" All the small things(tm)
" -----------------------
" ------- COLOR ------
set background=dark     " Set syntax highlighting
" ------- UI ------
set number              " show line numbers
set wrap            " set wrap for lines
set ruler		" show the cursor position all the time
set title           " show title in the console title bar
set ttyfast         " smoother changes
set numberwidth=4       " line numbering takes up to 4 spaces
set showmatch		" Cursor shows matching ) and }
set ls=2            " always show status line
set cmdheight=2     " cmd height
set laststatus=2    " show last status?

" ------- BEHAVIOUR ------
set autoread		" auto read when file is changed from outside
set history=50		" keep 50 lines of command line history
set hidden              " Change buffer without saving
set wildmenu            " wild char completion menu
set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmode=list:longest,list:full
set wildignore=*.o,*.class,*.pyc 
set cf                  " Enable error files and error jumping
set clipboard+=unnamed	" yank to the system register (*) by default
set autowrite           " write on make/shell command
set timeoutlen=350      " time to wait for a command (after leader for example,)
set foldlevelstart=99   " remove folds
set formatoptions=crql  
set showmode		" Show current mode

" ------- TEXT FOMAT ------
" ----------------------
" tabs setting
" ----------------------
set bs=2		" allow backspacing over everything in insert mode
set tabstop=2
set backspace=2 	" Delete everything with backspace
set shiftwidth=2 	" Tabs under smart indent
set cindent
set autoindent		" auto indentation
set expandtab       	"replace <TAB> with spaces
set smarttab		" insert tabs on the start of a line according to context
set softtabstop=2 
set copyindent		" copy the previous indentation on autoindenting
set linebreak       	" linebreaks

" ------- SEARCHING ------
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
set incsearch		" incremental search
set hlsearch		" search highlighting
set nobackup		" no *~ backup files


" ------- VISUAL ------
set showcmd         	" display incomplete commands
set scrolloff=5     	" keep 5 lines when scrolling
set showmatch       	" show matching braces
set matchtime=2	    	" how many tenths of a second to blink
set shortmess=atI   	" abbreviate messages
set nostartofline   	" don't jump to first character when paging
set undolevels=200
set showtabline=2
set cursorline    	" Cursor line to see where my cursor is, smart.
set t_Co=256


" ------- SOUND ------
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" ------- MOUSE ------
set mousehide		" Hide mouse after chars typed
set mouse=a         	" enable mouse


" ------- OTHER ------
set complete=.,w,b,u,U	" Better complete options to speed it up

" ----------------------
" status line
" ----------------------
set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \ 
set statusline+=\ \ \ [%{&ff}/%Y] 
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

"---------------------------------------------------------------------------" ENCODING SETTINGS
"--------------------------------------------------------------------------- 
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

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

" ---------------
" Fix Trailing White Space
" ---------------
map <leader>ws :%s/\s\+$//e<CR>
command! FixTrailingWhiteSpace :%s/\s\+$//e

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
syntax on		" syntax highlight
filetype plugin on    " Enable filetype-specific plugins

"--------------------------------------------------------------------------- 
" USEFUL SHORTCUTS
"--------------------------------------------------------------------------- 
" set leader to ,
let mapleader=","
let g:mapleader=","

" Fixes common typos
command W w
command Q q

" Removes doc lookup binding because it's easy to fat finger
nmap K k
vmap K k

" Make line completion easier
imap <C-l> <C-x><C-l>

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv

" Easier Scrolling (think j/k with left hand)
" All variations are mapped for now until I get used to one
" C/M/D + d (page up)
" C/M/D + f (page down)
nmap <C-d> <C-b>
if has("gui_macvim")
  nmap <D-f> <C-f>
  nmap <D-d> <C-b>
else
  nmap <M-f> <C-f>
  nmap <M-d> <C-b>
endif


" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

" Map ,e to open files in the same directory as the current file
map <leader>e :e <C-R>=expand("%:h")<cr>\

" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

"replace the current word in all opened buffers
" map <leader>r :call Replace()<CR>

" -------Leader Commands -----
" Toggle spelling mode with ,s
nmap <silent> <leader>s :set spell!<CR>

" Window Movement
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Previous Window
nmap <silent> <C-p> :wincmd p<CR>

" Equal Size Windows
nmap <silent> <leader>w= :wincmd =<CR>


" Window Splitting
nmap <silent> <leader>sh :split<CR>
nmap <silent> <leader>sv :vsplit<CR>
nmap <silent> <leader>sc :close<CR>
" Because I'm dyslexic
nmap <silent> <leader>hs :split<CR>
nmap <silent> <leader>vs :vsplit<CR>
nmap <silent> <leader>cs :close<CR>


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
autocmd BufNewFile,BufRead *.scss set ft=scss.css  " scss
autocmd BufNewFile,BufRead *.sass set ft=sass.css  " sass
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
autocmd BufNewFile,BufRead _vimrc setlocal tabstop=2 shiftwidth=2 softtabstop=2
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
"set modelines=3

"--------------------------------------------------------------------------- 
" PLUGIN SETTINGS
"--------------------------------------------------------------------------- 
" --- EasyMotion
"let g:EasyMotion_leader_key = '<Leader>m' " default is <Leader>w
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" --- Powerline
" Keep ^B from showing on Windows in Powerline
if has('win32') || has('win64')
  let g:Powerline_symbols = 'compatible'
elseif has('gui_macvim')
  let g:Powerline_symbols = 'fancy'
endif

" --- NERDTree
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1

" ---- Indent Guides
let g:indent_guides_enable_on_vim_startup=1

" ---- Jellybeans
hi! link cssAttr Constant

" ----- Surround
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

" ----- mini buffer explorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" --- SnipMate
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate
" ----- neocomplcache
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
  map <F3> :FufFile<CR>
" map <F3> :TagbarToggle<CR>
" map <F4> :noh<CR>
" map <F5> :GundoToggle<CR>
" map <F6> :JSLintToggle<CR>
endif

" shortcut to change to htmldjnago
" nmap <leader>d :set ft=htmldjango<CR>
