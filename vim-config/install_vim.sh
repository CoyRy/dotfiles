 #!/bin/bash
 VIMRC_SOURCE="$(dirname "$0")/.vimrc"
 VIMRC_DEST="$HOME/.vimrc"
 VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

 # Copy .vimrc to home directory
 echo "Copying .vimrc to $HOME..."
 cp "$VIMRC_SOURCE" "$VIMRC_DEST"

 # Install Vundle if not present
 if [ ! -d "$VUNDLE_DIR" ]; then
     echo "Installing Vundle..."
     git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
 else
     echo "Vundle already installed."
 fi

 # Install Vim plugins
 echo "Installing Vim plugins..."
 vim +PluginInstall +qall

 echo "Setup complete!"

