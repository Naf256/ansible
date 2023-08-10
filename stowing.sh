#!/bin/bash

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


# Install ansible and run playbook
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update -y
sudo apt-get install -y curl git software-properties-common ansible

sudo ansible-playbook --ask-vault-pass local.yml

