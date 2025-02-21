set nocompatible
filetype off

" Set runtime path for Vundle
 set rtp+=~/.vim/bundle/Vundle.vim

 call vundle#begin()

 " Install Vundle itself
  Plugin 'VundleVim/Vundle.vim'

 " Colorscheme
 Plugin 'nanotech/jellybeans.vim'

 " Improvement Plugins
 Plugin 'tpope/vim-fugitive'

 call vundle#end()
 filetype plugin indent on

 " Enable jellybeans color scheme
 syntax enable
 colorscheme jellybeans
