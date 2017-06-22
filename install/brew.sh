/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

apps=(
	git
	heroku
	jq
	python
	sbt
	wget
)

brew install "${apps[@]}"
