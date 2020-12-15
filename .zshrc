export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000

export PATH="/usr/local/sbin:$PATH:$HOME/.composer/vendor/bin:/Users/george/Library/Python/2.7/bin"
export DOTFILES=~/.dotfiles

source ${DOTFILES}/aliases
source ${DOTFILES}/functions

# Local Files
source ${DOTFILES}/local/work


export STARSHIP_CONFIG=~/.dotfiles/starship.toml
eval "$(starship init zsh)"


autoload -Uz compinit; compinit

_comp_options+=(globdots) # With hidden files

##  PLUGINS
antibody bundle < ${DOTFILES}/zsh_plugins.txt > ${DOTFILES}/.zsh_plugins.sh

source ${DOTFILES}/.zsh_plugins.sh



# Case insensitive matching
# zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':autocomplete:tab:*' widget-style menu-select
zstyle ':autocomplete:tab:*' fzf-completion yes


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

