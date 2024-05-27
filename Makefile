SHELL := /bin/bash

install-part-1:
	sudo apt update && sudo apt upgrade -y
	sudo apt install apparmor apparmor-utils -y
	sudo apt install docker.io docker-buildx docker-compose -y
	sudo usermod -aG docker $$USER

install-part-2:
	sudo apt update && sudo apt upgrade -y
	sudo apt install nano -y
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
	. ~/.nvm/nvm.sh && nvm install 20.11.1
	. ~/.nvm/nvm.sh && npm install -g gulp-cli yarn
	sudo apt purge git -y && sudo apt remove git -y
	sudo apt update && sudo apt install git -y
	git config --global init.defaultBranch main
	git config --global core.editor "code --wait"
	ssh-keygen

install-part-3:
	sudo apt install zsh -y
	chsh -s $$(which zsh)
	sh -c "$$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	cp ~/.zshrc ~/.zshrc.orig
	sed -i 's/ZSH_THEME=".*"/ZSH_THEME="eastwood"/' ~/.zshrc

go: install-part-1 install-part-2 install-part-3

view-ssh-key:
	@cat ~/.ssh/id_rsa.pub

install-plugins:
	git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

docker-up: 
	docker-compose up -d

docker-down: 
	docker-compose down

docker-restart: 
	docker-compose down && docker-compose up -d

docker-777: 
	sudo chmod -R 777 * && sudo chown -R $$USER:www-data *

docker-space: 
	docker system df

docker-remove: 
	docker-compose down --volumes --rmi all
