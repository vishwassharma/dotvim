# Vim installation for life

## Installation

1. `git clone http://github.com/vishwassharma/dotvim.git` in your home folder
2. Make link
  - In Windows (start cmd.exe with admin permission)
        * `mklink /D .vim dotvim`
        * `mklink _vimrc dotvim/vimrc`
        * `mklink _gvimrc dotvim/gvimrc`
  - In Ubuntu 
      * `ln -s dotvim .vim`
      * `ln -s dotvim\vimrc .vimrc`
      * `ln -s dotvim\gvimrc .gvimrc`
3. Install [Vundle](https://github.com/gmarik/vundle) with `git clone http://github.com/gmarik/vundle.git bundle/vundle` 
4. Run Vim and type `:BundleInstall` to install the plugins with Vundle.

## Requirements

**Windows**

 * [gVim](http://www.vim.org/download.php#pc) - Use [Wu Yongwei's](http://wyw.dcweb.cn) pre-compiled [gVim 7.3.333](http://wyw.dcweb.cn/download.asp?path=vim&file=gvim73.zip) because it has Ruby support and the latest patches
 
## Notes

Be sure to always edit the vimrc using `,v`, which opens the vimrc in the .vim folder. Vim has a nasty habit of overriding symlinks.


## Plugin List

_Note: Auto generated by `rake plugins:update_readme`_