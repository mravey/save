/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

apps=(
	git
	heroku
	jq
	python
	sbt
	terraform
	wget
)

brew install "${apps[@]}"
