/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

apps=(
	git
	gradle
	heroku
	jq
	node
	nvm
	postgresql
	python
	sbt
	terraform
	tree
	wget
	watchman
)

brew install "${apps[@]}"
