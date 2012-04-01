" =======================================
" Who: Vishwas Sharma
" What: _vimrc of better life
" =======================================

" ----------------------------------------
" Vundle
" ----------------------------------------
set nocompatible	" not compatible with the old-fashion vi mode
" Note - 'filetype off' when already off causes a non-zero exit code from vim.
filetype off

set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" ------- Navigation
Bundle 'ZoomWin'
Bundle 'wincent/Command-T'
" This fork is required due to remapping ; to :
" Bundle 'christoomey/vim-space'
Bundle 'Lokaltog/vim-easymotion'
" Bundle 'vim-scripts/tag_list.vim'
" Bundle 'mutewinter/LustyJuggler'
" Bundle 'kien/ctrlp.vim'

" ------- UI Additions
Bundle 'mutewinter/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
" Bundle 'Rykka/ColorV'
Bundle 'nanotech/jellybeans.vim'
" Bundle 'tomtom/quickfixsigns_vim'
Bundle "fholgado/minibufexpl.vim"
" ------- Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
" Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-fugitive'
" Bundle 'godlygeek/tabular'
" Bundle 'mileszs/ack.vim'
" Bundle 'gmarik/sudo-gui.vim'
" Bundle 'milkypostman/vim-togglelist'
" Automatic Helpers
" Bundle 'IndexedSearch'
" Bundle 'xolox/vim-session'
Bundle 'Raimondi/delimitMate'
" Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'gregsexton/MatchTag'
Bundle 'Shougo/neocomplcache'

" -------Language Additions
" -------------- html
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" https://github.com/kogakure/vim-sparkup.git
Bundle "kogakure/vim-sparkup"
" -------------- pythoncomplete
Bundle "vim-scripts/pythoncomplete"
" -------------- Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
" --------------  JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'itspriddle/vim-jquery'
" --------------  Other Languages
" Bundle 'msanders/cocoa.vim'
" Bundle 'mutewinter/taskpaper.vim'
" Bundle 'mutewinter/nginx.vim'
" Bundle 'timcharper/textile.vim'
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
" Bundle 'acustodioo/vim-tmux'
Bundle 'hallison/vim-markdown'
" Bundle 'xhtml.vim--Grny'
" MatchIt
" Bundle 'matchit.zip'
" Bundle 'kana/vim-textobj-user'
" Bundle 'nelstrom/vim-textobj-rubyblock'

" ------- Libraries
" Bundle 'L9'
Bundle 'tpope/vim-repeat'
" Bundle 'tomtom/tlib_vim'
Bundle "MarcWeber/vim-addon-mw-utils" 
Bundle "tomtom/tlib_vim"

" ------- Snippets
" Install dependencies:
Bundle "snipmate-snippets"
Bundle "garbas/vim-snipmate"
" Install custom plugins
Bundle "vishwassharma/happy-snippets"

" let g:snipMate = {}
" let g:snipMate.scope_aliases = {}
" let g:snipMate.scope_aliases['ruby'] = 'ruby, ruby-rails'
" let g:snipMate.scope_aliases['python']= 'python, django'
" let g:snipMate.scope_aliases['html']= 'html, htmldjango'
" let g:snips_author = 'Hubert Farnsworth'
" let g:snips_trigger_key='<c-space>'

filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)
set ofu=syntaxcomplete#Complete

" ----------------------
" THEMES
" SET COLOR SCHEME
" ----------------------
colorscheme jellybeans

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
syntax enable
set autoread		" auto read when file is changed from outside
set history=50		" keep 50 lines of command line history
set hidden              " Change buffer without saving
set wildmenu            " wild char completion menu
set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmode=list:longest,list:full
set wildignore=*.o,*.class,*.pyc 
set cf                  " Enable error files and error jumping
set clipboard+=unnamed	" yank to the system register (*) by default
" set clipboard+=unnamedplus	" yank to the system register (*) by default
set autowrite           " write on make/shell command
set timeoutlen=350      " time to wait for a command (after leader for example,)
set foldlevelstart=99   " remove folds
set formatoptions=crql  
set showmode		" Show current mode

" ------- TEXT FOMAT ------
" ----------------------
" tabs setting
" ----------------------
set tabstop=8
set softtabstop=4
set backspace=2 " Delete everything with backspace
set shiftwidth=4  " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set bs=2		" allow backspacing over everything in insert mode

" set softtabstop=2 
" set copyindent		" copy the previous indentation on autoindenting
" set linebreak       	" linebreaks

" ------- SEARCHING -----
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
set incsearch		" incremental search
set hlsearch		" search highlighting
set nobackup		" no *~ backup files
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache,*.class

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

"---------------------------------------------------------------------------
" ENCODING SETTINGS
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

" ----------------------------------------
" Platform Specific Configuration
" ----------------------------------------
set guioptions-=T " Toolbar
set guioptions-=m " Menubar
set lines=60
set columns=120
if has('win32') || has('win64')
  " Windows
  source $VIMRUNTIME/mswin.vim
  set guifont=Consolas:h10
  " set guioptions-=T " Toolbar
  " set guioptions-=m " Menubar

  " Set height and width on Windows
  set lines=60
  set columns=120

  " Windows has a nasty habit of launching gVim in the wrong working directory
  " cd ~
elseif has('gui_macvim')
  " MacVim

  " Custom Menlo font for Powerline
  " From: https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts
  set guifont=Menlo\ for\ Powerline:h12

  " Hide Toolbar in MacVim
  if has("gui_running")
    set guioptions=egmrt
  endif

  " Use option (alt) as meta key.
  set macmeta
endif

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

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv

" Map ,e to open files in the same directory as the current file
map <leader>e :e <C-R>=expand("%:h")<cr>\

" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

" ---------------
" Leader Commands
" ---------------
" Toggle spelling mode with ,s
nmap <silent> <leader>s :set spell!<CR>
" Edit vimrc with ,v
nmap <silent> <leader>v :e $HOME/.vim/vimrc<CR>

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

" ----------------------------------------
" Auto Commands
" ----------------------------------------
" ----------------------
" FILETYPE OPERATIONS
" ----------------------
" Enable omni completion. (Ctrl-X Ctrl-O)
" autocmd FileType Makefile set noexpandtab
" ----------------------
" HTML
" ----------------------
" autocmd FileType html,markdown,htmldjango setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType html,htmldjango setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd FileType html,htmldjango set shiftwidth=4 softtabstop=4 tabstop=4 autoindent expandtab smarttab
" autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd FileType xhtml setlocal tabstop=2 shiftwidth=2 softtabstop=2
" ----------------------
" Javascript
" ----------------------
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd BufNewFile,BufRead *.json set ft=javascript
" autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd FileType less setlocal ai
" autocmd FileType less setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd FileType coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2
" ----------------------
" CSS
" ----------------------
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd BufNewFile,BufRead *.scss set ft=scss.css  " scss
" autocmd BufNewFile,BufRead *.sass set ft=sass.css  " sass
" ----------------------
" python
" make Python follow PEP8 (http://www.python.org/dev/peps/pep-0008/)
" -------
"  set completeopt-=preview " to remove docs 
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif 
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType python set softtabstop=4 tabstop=4 shiftwidth=4 copyindent
autocmd FileType python set shiftwidth=4 softtabstop=4 tabstop=4 autoindent expandtab smarttab
" autocmd FileType less set softtabstop=2 tabstop=2 shiftwidth=2
" autocmd BufNewFile,BufRead admin.py setlocal filetype=python.django
" autocmd BufNewFile,BufRead urls.py setlocal filetype=python.django
" autocmd BufNewFile,BufRead models.py setlocal filetype=python.django
" autocmd BufNewFile,BufRead views.py setlocal filetype=python.django
" autocmd BufNewFile,BuRead settings.py setlocal filetype=python.django
" autocmd BufNewFile,BufRead forms.py setlocal filetype=python.django
" ----------------------
" ruby
" ----------------------
" autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
" autocmd BufNewFile,BufRead *.ru setfiletype ruby
" autocmd BufNewFile,BufRead Gemfile setfiletype ruby
" autocmd BufNewFile,BufRead Capfile setfiletype ruby
" ----------------------
" others
" code indentation and file detection
" ----------------------
" autocmd BufNewFile,BufRead _vimrc setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd BufNewFile,BufRead .vimrc setlocal tabstop=2 shiftwidth=2 softtabstop=2

if has("autocmd")
  " No formatting on o key newlines
  autocmd BufNewFile,BufEnter * set formatoptions-=o

  " No more complaining about untitled documents
  autocmd FocusLost silent! :wa

  " When editing a file, always jump to the last cursor position.
  " This must be after the uncompress commands.
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line ("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif

" ----------------------------------------
" Plugin Configuration
" ----------------------------------------
" -----------------------
" minibufexpl
"  --------------------
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
" ---------------
" easyMotion
" ---------------
"let g:EasyMotion_leader_key = '<Leader>m' " default is <Leader>w
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" ---------------
" SuperTab
" ---------------
" Set these up for cross-buffer completion (something Neocachecompl has a hard
" time with)
let g:SuperTabDefaultCompletionType="<c-x><c-n>"
" let g:SuperTabDefaultCompletionType="<C-X><C-O>"
let g:SuperTabContextDefaultCompletionType="<c-x><c-n>"
let g:SuperTabDefaultCompletionType = "context"

" ---------------
" Neocachecompl
" ---------------
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=1 "Select the first entry automatically
let g:neocomplcache_enable_cursor_hold_i=1
let g:neocomplcache_cursor_hold_i_time=300
let g:neocomplcache_auto_completion_start_length=1

" Tab / Shift-Tab to cycle completions
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Required to make neocomplcache_cursor_hold_i_time work
" See https://github.com/Shougo/neocomplcache/issues/140
let s:update_time_save = &updatetime
autocmd InsertEnter * call s:on_insert_enter()

function! s:on_insert_enter()
  if &updatetime > g:neocomplcache_cursor_hold_i_time
    let s:update_time_save = &updatetime
    let &updatetime = g:neocomplcache_cursor_hold_i_time
  endif
endfunction

autocmd InsertLeave * call s:on_insert_leave()

function! s:on_insert_leave()
  if &updatetime < s:update_time_save
    let &updatetime = s:update_time_save
  endif
endfunction

" ---------------
" Lusty Juggler
" ---------------
if has('unix')
  " Allows for previous buffer on unix systems without most recent patch level
  " that enable LustyJuggler to work
  nnoremap <leader>, :e#<CR>
else
  nnoremap <leader>, :LustyJugglePrevious<CR>
end
let g:LustyJugglerShowKeys=1 " Show numbers for Lusty Buffers
let g:LustyJugglerSuppressRubyWarning=1

" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" Platform-specific config files
if has('win32') || has('win64')
  let g:syntastic_jsl_conf=$HOME.'/.vim/config/windows/syntastic/jsl.conf'
  let g:syntastic_disabled_filetypes=['sh'] " Disable .sh on Windows
endif

" ---------------
" NERDTree
" ---------------
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
" let NERDTreeShowFiles=1 " Tell Nerd tree to show files at startup
" let loaded_nerd_tree=1 " let vim can not load NERDTree.
let NERDChristmasTree = 1 " colourful. =0 for more vanilla looking tree.
let NERDTreeAutoCenter = 1 " default = 1.
let NERDTreeAutoCenterThreshold = 3 " default = 3.
let NERDTreeCaseSensitiveSort = 0 " default = 0.
let NERDTreeChDirMode = 1 " 0/1/2
let NERDTreeHighlightCursorline = 1 " highlight cursorline.
let NERDTreeHijackNetrw = 1 " for :edit <dir> open 'secondary' NERD tree.
let NERDTreeIgnore = ['\~$', '\.log', '\.pyo', '\.pyc', '\.swp', '\.bak', '\.git', '\.hg']
" let NERDTreeBookmarksFile="$HOME/.vim/NERDTreeBookmarks" " where Bookmarks are saved.
let NERDTreeQuitOnOpen = 0 " does not close after open. default=0.
let NERDTreeShowBookmarks = 1 " show Bookmarks when open NERD-tree.
let NERDTreeShowHidden = 0 " does not show hidden files.
let NERDTreeShowLineNumbers = 0 " do not show line numbers, default=0
let NERDTreeWinPos = "right" " NERD-tree window position.
" let NERDTreeWinSize = 20 " window size, default=31.
" nnoremap <silent> <F11> :NERDTreeToggle<CR>
" autocmd VimEnter * NERDTree " Show nerdtree at startup
" autocmd VimEnter * wincmd p
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == \"primary\") | q | endif

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup=1

" ---------------
" Session
" ---------------
let g:session_autosave=0
let g:session_autoload=0
nnoremap <leader>os :OpenSession<CR>

" ---------------
" SpeedDating
" ---------------
let g:speeddating_no_mappings=1 " Remove default mappings (C-a etc.)
nmap <silent><leader>dm <Plug>SpeedDatingDown
nmap <silent><leader>dp <Plug>SpeedDatingUp
nmap <silent><leader>dn <Plug>SpeedDatingNowUTC

" ---------------
" Tabular
" ---------------
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>
nmap <Leader>t> :Tabularize /=>\zs<CR>
vmap <Leader>t> :Tabularize /=>\zs<CR>

" ---------------
" Fugitive
" ---------------
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nmap <Leader>gx :wincmd h<CR>:q<CR>

" ---------------
" Zoomwin
" ---------------
" Zoom Window to Full Size
nmap <silent> <leader>wo :ZoomWin<CR>

" ---------------
" Command T and ctrlp.vim
" ---------------
" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''
if has('ruby')
  " We've got Ruby, use Command T

  " Conditional Mappings
  if has("gui_macvim")
    nnoremap <silent><D-t> :CommandT<CR>
  else
    nnoremap <silent><M-t> :CommandT<CR>
  endif

  " Leader Commands
  nnoremap <leader>t :CommandT<CR>
  nnoremap <leader>u :CommandT %%<CR>
else
  " Fallback on ctrlp.vim if Ruby for Command T not available

  " Conditional Mappings
  if has("gui_macvim")
    let g:ctrlp_map = '<D-t>'
  else
    let g:ctrlp_map = '<M-t>'
  endif

  " Leader Commands
  nnoremap <leader>t :CtrlPRoot<CR>
endif

" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10
let g:CommandTMaxHeight = 10

" Mapping from ctrlp we always use
if has('gui_macvim')
  nnoremap <silent><D-u> :CtrlPCurFile<CR>
  nnoremap <silent><D-y> :CtrlPMRUFiles<CR>
else
  nnoremap <silent><M-u> :CtrlPCurFile<CR>
  nnoremap <silent><M-y> :CtrlPMRUFiles<CR>
end

" Also map leader commands
nnoremap <leader>u :CtrlPCurFile<CR>
nnoremap <leader>y :CtrlPMRUFiles<CR>

" ---------------
" Powerline
" ---------------
" Keep ^B from showing on Windows in Powerline
if has('win32') || has('win64')
  let g:Powerline_symbols = 'compatible'
elseif has('gui_macvim')
  let g:Powerline_symbols = 'fancy'
endif

" ---------------
" jellybeans.vim colorscheme tweaks
" ---------------
" Make cssAttrs (center, block, etc.) the same color as units
hi! link cssAttr Constant

" ---------------
" Vundle
" ---------------
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bu :BundleInstall!<CR> " Because this also updates
nmap <Leader>bc :BundleClean<CR>

" ---------------
" snipMate
" ---------------
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails'
let g:snipMate.scope_aliases['python']= 'python,django'
let g:snipMate.scope_aliases['html']= 'html,htmldjango'

" ---------------
" surround
" ---------------
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"


" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" OpenURL
" ---------------

if has('ruby')
ruby << EOF
  require 'open-uri'
  require 'openssl'
  
  def extract_url(url)
    re = %r{(?i)\b((?:[a-z][\w-]+:(?:/{1,3}|[a-z0-9%])|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]\{\};:'".,<>?«»“”‘’]))}

    url.match(re).to_s
  end

  def open_url
    line = VIM::Buffer.current.line

    if url = extract_url(line)
      if RUBY_PLATFORM.downcase =~ /(win|mingw)(32|64)/
        `start cmd /c chrome #{url}`
        VIM::message("Opened #{url}")
      else
        `open #{url}`
        VIM::message("Opened #{url}")
      end
    else
      VIM::message("No URL found on this line.")
    end

  end

  # Returns the contents of the <title> tag of a given page
  def fetch_title(url)
    if RUBY_VERSION < '1.9'
      open(url).read.match(/<title>(.*?)<\/title>?/i)[1]
    else
      open(url, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read.match(/<title>(.*?)<\/title>?/i)[1]
    end
  end

  # Paste the title and url for the url on the clipboard in markdown format: [Title](url)
  # Note: Clobbers p register
  def paste_url_and_title
    clipboard = VIM::evaluate('@+')
    url = extract_url(clipboard)
    if url and url.strip != ""
      puts "Fetching title"
      title = fetch_title(url)
      VIM::command "let @p = '[#{title}](#{url})'"
      VIM::command 'normal! "pp'
    else
      VIM::message("Clipboard does not contain URL: '#{clipboard[1..10]}'...")
    end
  end
EOF

" Open a URL
if !exists("*OpenURL")
  function! OpenURL()
    :ruby open_url
  endfunction
endif

command! OpenUrl call OpenURL()
nnoremap <leader>o :call OpenURL()<CR>

" ---------------
" Paste link with Title
" ---------------

" Open a URL
if !exists("*PasteURLTitle")
  function! PasteURLTitle()
    :ruby paste_url_and_title
  endfunction
endif

command! PasteURLTitle call PasteURLTitle()
map <leader>pt :PasteURLTitle<CR>

endif " endif has('ruby')


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
  map <F3> :NERDTreeFind<CR>
" map <F3> :TagbarToggle<CR>
" map <F4> :noh<CR>
" map <F5> :GundoToggle<CR>
" map <F6> :JSLintToggle<CR>
endif

" autocmd FileType html set ft=htmldjango.html " For SnipMate
nmap <leader>d :set ft=htmldjango.html<CR>
