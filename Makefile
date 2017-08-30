all: brew recipes cask freerdp dotfiles keybindings pip shell
.PHONY: all

# install brew
brew:
	/usr/bin/ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install brew recipes
recipes:
	brew install \
		caskroom/cask/brew-cask \
		git \
		ipcalc \
		keepassx \
		python \
		python3 \
		ssh-copy-id \
		watch \
		wget
	brew cleanup

cask:
	brew cask install --appdir="/Applications" \
		evernote \
		firefox \
		google-backup-and-sync \
		google-chrome \
		iterm2 \
		slack \
		spotify \
		vagrant \
		virtualbox \
		xquartz 
	brew cask cleanup

# install freerdp (dependent on xquartz being installed)
freerdp:
	brew install \
		freerdp
	brew cleanup

# copy dotfiles to home directory 
dotfiles:
	cp -p homedir/.gitconfig ~/.gitconfig
	cp -p homedir/.gitignore ~/.gitignore
	cp -p homedir/.zshrc ~/.zshrc
	cp -rp homedir/.zsh ~/

# set keybinding; this changes the ± key to # on a UK Mac laptop keyboard
keybindings:
	mkdir -p ~/Library/KeyBindings
	cp Library/KeyBindings/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict

pip:
	pip2 install --upgrade pip
	pip3 install --upgrade pip
	pip2 install virtualenv virtualenvwrapper

## configure login shell
shell:
	chsh -s /bin/zsh

