brew tap caskroom/cask

apps=(
	adobe-acrobat-reader
	cinch
	firefox
	google-chrome
	intellij-idea
	iterm2
	ngrok
	qlcolorcode 
	qlstephen
	qlmarkdown 
	quicklook-json 
	webpquicklook 
	suspicious-package 
	quicklookase 
	qlvideo
	slack
	sourcetree
	sublime-text
	transmission
	vlc
)

brew cask install "${apps[@]}"
