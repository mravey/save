/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

apps=(
	elixir
	git
	heroku
	jq
	python
	wget
)

brew install "${apps[@]}"
