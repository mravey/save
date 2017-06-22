brew tap caskroom/cask

apps=(
	adobe-acrobat-reader
	cinch
	cloudapp
	dropbox
	firefox
	google-chrome
	intellij-idea
	iterm2
	java
	skype
	slack
	sourcetree
	sublime-text2
	transmission
	vlc
	zeplin
)

brew cask install "${apps[@]}"

ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
