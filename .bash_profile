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

shopt -s cdspell

export GPG_TTY=`tty`

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d ."

_fzf_compgen_path() {
    fd . "$1"
}

_fzf_compgen_dir() {
    fd --type d . "$1"
}
