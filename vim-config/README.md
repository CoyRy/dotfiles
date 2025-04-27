# Vim Customization

This directory contains my Vim configuration (`.vimrc`) and the installation script (`install_vim.sh`).

* **`.vimrc`:** My Vim configuration file. It includes settings for:
    * Basic Vim behavior (e.g., `nocompatible`).
    * Enabling filetype detection, plugin support, and indentation.
    * Configuration for Vundle, a Vim plugin manager.
    * Installation and management of the following Vim plugins:
        * VundleVim/Vundle.vim: The Vundle plugin manager itself.
        * nanotech/jellybeans.vim: The Jellybeans color scheme.
        * tpope/vim-fugitive: A Git wrapper inside Vim.
    * Enabling the Jellybeans color scheme.

* **`install_vim.sh`:** A shell script designed to automate the initial setup of my Vim environment. It performs the following actions:
    * Copies the `.vimrc` file to the user's home directory (`~`).
    * Clones the Vundle repository into `~/.vim/bundle/Vundle.vim` if it's not already present.
    * Uses Vim to automatically install the plugins listed in the `.vimrc`.

## Retrospective Notes and Desired Improvements

* Modularize Vim Configuration: As my Vim setup grows, it might be beneficial to break down the `.vimrc` into smaller, more manageable files for different aspects of the editor like UI, language-specific settings, key mappings.


