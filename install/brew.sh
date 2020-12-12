/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

apps=(
	git
	go
	gradle
	heroku
	jq
	node
	nvm
	postgresql
	python
	sbt
	stripe/stripe-cli/stripe
	terraform
	tree
	wget
	watchman
)

brew install "${apps[@]}"
