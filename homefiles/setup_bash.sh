#!/bin/bash

# Required packages for the aliases to work properly
REQUIRED_PACKAGES=("ls" "coreutils")

# Function to check if a package is installed (Debian-based systems)
check_package() {
    dpkg -l | grep -q "^ii  $1 "
}

# Output missing packages
echo "Checking for required packages..."
MISSING_PACKAGES=()
for package in "${REQUIRED_PACKAGES[@]}"; do
    if ! check_package "$package"; then
        MISSING_PACKAGES+=("$package")
    fi
done

# Display missing packages to the user
if [ ${#MISSING_PACKAGES[@]} -ne 0 ]; then
    echo "The following packages are missing and may be needed for your .bashrc aliases:"
    for package in "${MISSING_PACKAGES[@]}"; do
        echo "  sudo apt-get install -y $package"
    done
else
    echo "All required packages are installed."
fi

# Backup existing .bash_aliases
if [ -f ~/.bash_aliases ]; then
    mv ~/.bash_aliases ~/.bash_aliases.bak
    echo "Existing .bash_aliases backed up as .bash_aliases.bak"
fi

# Symlink the new .bash_aliases from homefiles
ln -s ~/homefiles/.bash_aliases ~/.bash_aliases
echo "Symbolic link created for .bash_aliases"

# Ensure .bashrc sources .bash_aliases
if ! grep -q "source ~/.bash_aliases" ~/.bashrc; then
    echo "source ~/.bash_aliases" >> ~/.bashrc
    echo "Updated .bashrc to source .bash_aliases"
fi

# Prompt user to reload their shell
echo "Run 'source ~/.bashrc' or restart your terminal to apply changes."

