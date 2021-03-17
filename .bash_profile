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

export AWS_PROFILE=staging
export GPG_TTY=`tty`
export EDITOR="code --wait"

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

alias onelogin='onelogin-aws-assume-role --onelogin-username matthieu.ravey --client_id d8fa456813757a4c4fa78fe27d158b7fb17cc63f664adb55b751ad3a54029d04 --client_secret 192544b1a8e6e52aa77a619099ffd09fc2e8d9bc3a1a734484dbc74cb9f3dd8b --region eu --onelogin-app-id 387536 --onelogin-subdomain qonto --profile default --aws-region eu-west-3 --aws-account-id 674764870074 --aws-role-name qonto-team-backend --duration 43200'