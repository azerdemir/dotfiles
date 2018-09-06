# Source .zshrc.before file if exists 
if [ -f "$HOME/.zshrc.before" ]; then
    source "$HOME/.zshrc.before"
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="lambda-mod"
ZSH_THEME="dracula"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# The time the shell waits for another key to be pressed
KEYTIMEOUT=1

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew colored-man tmux sublime docker extract history history-substring-search)

source $ZSH/oh-my-zsh.sh

# Environment variables
export EDITOR="vim"
SHELL_CONF_PATH="$HOME/.shell_conf"

# Source configuration files
if [ "$OPERATING_SYSTEM" = "macos" ]; then
    source "$SHELL_CONF_PATH/macos"
else
    source "$SHELL_CONF_PATH/linux"
fi

source $SHELL_CONF_PATH/base
source $SHELL_CONF_PATH/docker
source $SHELL_CONF_PATH/go
source $SHELL_CONF_PATH/php

# Source third parties
source $HOME/.goto.sh

# Export $PATH environment variable
export PATH
