brew tap caskroom/cask

apps=(
	cinch
	cloudapp
	dropbox
	firefox
	google-chrome
	intellij-idea
	iterm2
	skype
	slack
	sourcetree
	sublime-text
	transmission
	vlc
	webstorm
)

brew cask install "${apps[@]}"

ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

