# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 34

# Wipe all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array

# Always show dock
defaults write com.apple.dock autohide -bool false

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Show battery percentage.
defaults write com.apple.menuextra.battery ShowPercent -bool true
