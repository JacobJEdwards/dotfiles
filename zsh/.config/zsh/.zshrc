# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$ZDOTDIR/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# CASE_SENSITIVE="true"

HYPHEN_INSENSITIVE="true"

# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# zstyle ':omz:update' frequency 13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
    git 
    brew 
    aliases 
    colored-man-pages 
    colorize 
    rsync 
    safe-paste 
    web-search 
    autojump
    sudo
    zsh-autocomplete
    dirhistory
    macos
    F-Sy-H
    z
    vi-mode
)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

VI_MODE_SET_CURSOR=true

# You may need to manually set your language environment
export LANG=en_US.UTF-8

zstyle ':autocomplete:*' min-input 1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh

eval "$(rbenv init - zsh)"
export PATH="/usr/local/sbin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


eval "$(direnv hook $0)"

set -o vi


path+=$HOME/.docker/bin

export BUN_INSTALL="$HOME/.bun" 
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
[ -s "/Users/jacobedwards/.bun/_bun" ] && source "/Users/jacobedwards/.bun/_bun"

source /Users/jacobedwards/Library/Application\ Support/org.dystroy.broot/launcher/bash/br
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"
export PATH=/usr/local/opt/postgresql@15/bin:/Users/jacobedwards/.bun/bin:/Users/jacobedwards/.pyenv/shims:/usr/local/sbin:/Users/jacobedwards/.rbenv/shims:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/PostgreSQL/15/bin:/Library/TeX/texbin:/Library/Apple/usr/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Applications/kitty.app/Contents/MacOS:/usr/local/opt/fzf/bin:/Users/jacobedwards/.docker/bin:/Applications/Docker.app/Contents/Resources/bin/
