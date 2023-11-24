#!/bin/bash

# Install ansible and run playbook
sudo apt update -y
sudo apt install software-properties-common stow git -y
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update -y
sudo apt install ansible -y

# Stowing folders
myfolders=("alacritty" "nvim" "bash" "tmux" "vim")

bashrc=~/.bashrc
bash_profile=~/.profile

if [ -e "$bashrc" ]; then
	rm $bashrc
	echo "File $bashrc deleted"
fi

if [ -e "$bash_profile" ]; then
	rm $bash_profile
	echo "File $bash_profile deleted"
fi

for item in "${myfolders[@]}"; do
	stow $item
done

# make dock transparent
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.0

sudo ansible-playbook --ask-vault-pass local.yml

