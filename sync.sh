declare -a config

config=(
	.bashrc 
	.config 
	.fonts 
	.gdbinit 
	.oh-my-zsh 
	scripts 
	.tmux.conf 
	.vimrc 
	.Xresources 
	.zshrc
)

for file in "${config[@]}";
do 
	cp -r $file ~/;
done
