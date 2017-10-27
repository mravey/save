brew tap caskroom/cask

apps=(
	1password
	adobe-acrobat-reader
	cinch
	cloudapp
	dropbox
	firefox
	google-chrome
	intellij-idea
	iterm2
	java
	opera-neon
	skype
	slack
	sourcetree
	sublime-text
	transmission
	vlc
	webstorm
	zeplin
)

brew cask install "${apps[@]}"

ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

