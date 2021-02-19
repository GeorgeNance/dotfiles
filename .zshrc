export HISTSIZE=10000                   # Maximum events for internal history

export SAVEHIST=10000
export DOTFILES=~/.dotfiles
export PATH="/usr/local/sbin:$PATH:$HOME/.composer/vendor/bin:/Users/george/Library/Python/2.7/bin:${DOTFILES}/bin"


setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD


setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS


source ${DOTFILES}/aliases
source ${DOTFILES}/functions

# Local Files
source ${DOTFILES}/local/work


export STARSHIP_CONFIG=~/.dotfiles/starship.toml
eval "$(starship init zsh)"



autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;


_comp_options+=(globdots) # With hidden files

##  PLUGINS
source ${DOTFILES}/.zsh_plugins.sh



# Case insensitive matching
# zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':autocomplete:tab:*' widget-style menu-select
zstyle ':autocomplete:tab:*' fzf-completion yes


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

