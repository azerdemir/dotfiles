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
ZSH_THEME="ys"

#ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs anaconda)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history)
#POWERLEVEL9K_CONTEXT_TEMPLATE="azer"
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true

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
plugins=(git brew tmux sublime docker extract history history-substring-search)

source $ZSH/oh-my-zsh.sh

export EDITOR="vim"
SHELL_CONF_PATH="$HOME/.shell_conf"

# Source configuration files
if [ "$OPERATING_SYSTEM" = "macos" ]; then
    source "$SHELL_CONF_PATH/macos"
else
    source "$SHELL_CONF_PATH/linux"
fi

# OS aliases
alias l="ls -l"
alias la="ls -alh"
alias cls="clear"

# docker
source $SHELL_CONF_PATH/docker

# python
if [ -d "$HOME/.miniconda3" ]; then
    MINICONDA_HOME=~/.miniconda3
    PATH=$MINICONDA_HOME/bin:$PATH
    source $MINICONDA_HOME/etc/profile.d/conda.sh
fi

# Source third parties
if [ -f "$HOME/.goto.sh" ]; then
    source $HOME/.goto.sh
fi

# Source .zshrc.after file if exists
if [ -f "$HOME/.zshrc.after" ]; then
    source "$HOME/.zshrc.after"
fi

# Export $PATH environment variable
export PATH
