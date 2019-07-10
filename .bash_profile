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
