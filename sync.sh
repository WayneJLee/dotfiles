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
	.tmux
)

for file in "${config[@]}";
do 
	cp -r $file ~/;
done
