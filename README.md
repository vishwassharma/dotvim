# Vim installation for life

## Installation

1. `git clone http://github.com/vishwassharma/dotvim.git` in your home folder
2. Make link
  - In Windows (start cmd.exe with admin permission)
        mklink /D .vim dotvim
        mklink _vimrc dotvim/vimrc
        mklink _gvimrc dotvim/gvimrc
  - In Ubuntu 
    * `ln -s dotvim .vim`
    * `ln -s dotvim\vimrc .vimrc`
    * `ln -s dotvim\gvimrc .gvimrc`
3. 
