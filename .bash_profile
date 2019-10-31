for DOTFILE in `find ~/Code/mravey/save/system`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

source ~/Code/mravey/save/git/git-completion.bash
source ~/Code/mravey/save/git/git-prompt.sh

for COMPLETION in `find ~/Code/mravey/save/completion`
do
	[ -f "$COMPLETION" ] && source "$COMPLETION"
done

export PS1='mravey:\W$(__git_ps1) \$ '

export PATH=~/Library/Python/3.6/bin:$PATH

export PATH="$HOME/.cargo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion