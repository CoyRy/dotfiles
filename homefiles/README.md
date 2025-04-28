# Bash Customization
This repository contains dotfiles for customizing a Bash environment. 

## Features
* **Handy Aliases:** Includes a set of useful aliases for navigating directories quickly and improving the output of the `ls` command:
    * `..`: Navigates one directory up (`cd ..`).
    * `...`: Navigates two directories up (`cd ../..`).
    * `....`: Navigates three directories up (`cd ../../..`).
    * `ls`: An alias for `ls --color=auto`, enabling colored output for better readability.
    * `ll`: An alias for `ls -lh`, displaying detailed file information in a human-readable format.
    * `la`: An alias for `ls -lha`, showing all files (including hidden ones) with detailed information in a human-readable format.
* **Automated Setup:** The `setup_bash.sh` script automates the process of making these aliases available in your Bash environment. It handles:
    * Checking for necessary packages (`ls` and `coreutils` on Debian-based systems).
    * Backing up any existing `~/.bash_aliases` file.
    * Creating a symbolic link from `~/homefiles/.bash_aliases` to `~/.bash_aliases`.
    * Ensuring that your `~/.bashrc` file sources the `~/.bash_aliases` file.
* **Organized Dotfiles:** Keeps your Bash aliases organized within the `~/homefiles/.bash_aliases` file, separating them from your main `~/.bashrc`.
* **Persistence:** By storing the `.bash_aliases` file in `~/homefiles` and using a symbolic link, customizations are kept separate and can be easily managed within the dotfiles collection.

## Installation

1.  **Clone the repository:**
    Clone this repository to your local machine.

    `git clone https://github.com/CoyRy/dotfiles ~/homefiles`

2.  **Run the setup script:**
    Navigate to the `homefiles` directory and execute the `setup_bash.sh` script:

    ```bash
    cd ~/homefiles
    chmod +x setup_bash.sh
    ./setup_bash.sh
    ```

3.  **Reload your Bash configuration:**
    After the script runs, you'll need to reload your Bash environment for the changes to take effect. You can do this by either closing and reopening your terminal or by running the following command:
    
    `source ~/.bashrc`

## used chatgpt
Prompt: 
Explore some useful bash aliases to mimic or add to your bash environment:

Two useful aliases
        "awesome" bash aliases
        30 okay aliases
        70 more aliases
    Something cool from The Ultimate B.A. .bashrc file

### Create a ~/.bash_aliases file and add the chosen aliases / functions from step 1.
### Verify your added aliases / bash additions work by running source <filename> - install additional packages if required
### Copy your bash customizations file to your dotfiles repository in homefiles
### Write a script that:
### [if needed] outputs to user packages that need to be installed for your .bashrc file
###  copies or symbolically links the .bashrc file in your dotfiles repository to your user's home directory
### yes, this means getting rid of, or better, moving (renaming) the original as a backup, and having the sym link named ~/.bashrc be in its place
###  copies or symbolically links the .bash_aliases file in your dotfiles repository to your user's home directory
###  copies or symbolically links the .bash_ghusername file in your dotfiles repository to your user's home directory
###  REQUIRED: remind (prompt) the user to reload their environment (with source or by logging out and back on)

### Add / copy the script to your dotfiles repository in homefiles
### Add a README.md file to the homefiles folder with a description about what these files do and citations
