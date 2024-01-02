/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

apps=(
	bat
	git
	jq
	nvm
	postgresql
	terraform
	tree
	wget
	watchman
)

brew install "${apps[@]}"
