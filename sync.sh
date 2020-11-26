#!/bin/bash

sudo apt update
sudo apt -y install zsh neovim tmux

declare -a config

config=(
	.bashrc 
	.config 
	.fonts 
	.oh-my-zsh 
	.tmux.conf 
	.vimrc 
	.zshrc
	.tmux
)

for file in "${config[@]}";
do 
	cp -r $file ~/;
done

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
