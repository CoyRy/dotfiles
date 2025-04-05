## Install Ansible

The `install_ansible.sh` script automates the installation of [Ansible](https://www.ansible.com/) on Ubuntu. It performs the following steps:

1. Checks if the script is run as root.
2. Verifies that the package manager is `apt`.
3. Prompts the user for confirmation before proceeding.
4. Checks if Ansible is already installed or if a command with the same name exists.
5. Updates the package list and installs Ansible silently.
6. Confirms successful installation and provides a test command.

## Usage

To install Ansible, run the script as root:

```bash
sudo ./install_ansible.sh
```

After installation, you can verify it with:

```bash
ansible --version
```

## Citations

- The official [Ansible documentation](https://docs.ansible.com/) was used to verify installation steps.
- This script was written with assistance from ChatGPT using the following prompt:
 
  Write a script to install Ansible that checks the effective user id (EUID) - if running as root the script may proceed, otherwise it exits and prompts the user that this script requires sudo or root
 - checks that the system package manager is apt (or apt is available on the system), otherwise it exits and prompts the user that this script uses the apt package manager
 - provides the user with information on what will be installed - allows the user to provide y for yes and proceeds or n for no and exits
 - checks if name of software or software (not each of its dependencies) exists - exits if software is found (or if software name is taken) and prompts the user that a name conflict occurred
     - ex. Let's say aws is a command that exists and outputs You're awesome! - but it isn't the aws tool you are about to install. Since the program name is already taken, your install would fail before accidentally changing system behavior
 - silently installs the software selected per instructions
     - ex. sudo apt install apache2 will prompt me y / n before proceeding; sudo apt install -y apache2 will assume "yes" as answer to all prompts and run non-interactively
 - prompts the user that install is complete and a command to run to try it
 - Add / copy the script to your dotfiles repository in sys-installs
 - Add a README.md file to the sys-installs folder with a description about what these file do and citations
      - if you used generative AI, you need to cite which was used and what the prompt was
      - markdown syntax for links is link descriptor - provide a little description of what was used in the article / video 


