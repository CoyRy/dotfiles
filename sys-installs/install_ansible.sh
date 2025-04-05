#!/bin/bash

# Check if running as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root or with sudo. Exiting."
    exit 1
fi

# Check if apt package manager is available
if ! command -v apt &> /dev/null; then
    echo "This script requires apt as the package manager. Exiting."
    exit 1
fi

SOFTWARE="ansible"

# Inform user about installation
echo "This script will install $SOFTWARE on your Ubuntu system."
echo -n "Do you want to proceed? (y/n): "
read -r CONFIRMATION
if [[ "$CONFIRMATION" != "y" ]]; then
    echo "Installation canceled. Exiting."
    exit 1
fi

# Check if the software is already installed or if a command with the same name exists
if command -v $SOFTWARE &> /dev/null; then
    echo "$SOFTWARE is already installed or the command name is taken. Exiting."
    exit 1
fi

# Update package list and install Ansible
apt update -y && apt install -y ansible

# Confirm installation success
if command -v $SOFTWARE &> /dev/null; then
    echo "Installation complete! You can verify the installation by running:"
    echo "  ansible --version"
else
    echo "An error occurred during installation. Please check for issues."
    exit 1
fi
