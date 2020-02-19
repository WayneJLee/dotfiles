#!/bin/bash

declare -a config

config=(
	~/.bashrc 
	~/.config 
	~/.fonts 
	~/.oh-my-zsh 
	~/.tmux.conf
	~/.vimrc 
	~/.zshrc
	~/.tmux
)

for file in "${config[@]}";
do 
	cp -r $file ~/dotfiles;
done

dconf dump /org/gnome/terminal/ > gnome_term.txt

git status --porcelain | sed -n -e 's/^?? //p' >> .gitignore

git add .

timestamp=$(date +"%D %T")

git commit -m "$timestamp: Sync"

git push -u origin master
