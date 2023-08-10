#!/bin/bash

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
	stow $item -t /root
done
