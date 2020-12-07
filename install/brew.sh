/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

apps=(
	bat
	bash
	bash-completion@2
	fd
	fzf
	git
	gradle
	gpg
	heroku
	jq
	kubectl
	kubectx
	node
	nvm
	postgresql
	python
	ripgrep
	sbt
	stripe/stripe-cli/stripe
	terraform
	tree
	wget
	watchman
)

brew install "${apps[@]}"
