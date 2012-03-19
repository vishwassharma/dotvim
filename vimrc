" Pathogen: manage plugins in separate directories by manipulating runtimepath.
" Note: 'filetype off' when already off causes a non-zero exit code from vim.
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Turn on line numbers:
set number

syntax on
filetype plugin indent on
