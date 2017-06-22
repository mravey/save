set -e

export DOTFILES_DIR=~/Code/mravey/save

# symlinks

ln -sfv "$DOTFILES_DIR/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/.inputrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# package managers

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/nvm.sh"
. "$DOTFILES_DIR/install/pip.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"

source macos.sh
