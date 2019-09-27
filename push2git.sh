declare -a config

config=(
	~/.bashrc 
	~/.config 
	~/.fonts 
	~/.gdbinit 
	~/.oh-my-zsh 
	~/scripts 
	~/.tmux.conf
	~/.vimrc 
	~/Xresources 
	~/.zshrc
)

for file in "${config[@]}";
do 
	cp -r $file ~/dotfiles;
done

git status --porcelain | sed -n -e 's/^?? //p' >> .gitignore

git add .

git commit -m 'Auto push'

git push -u origin master
