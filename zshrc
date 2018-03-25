# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lambda-mod"

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

# OS aliases
alias l="ls -l"
alias la="ls -alh"
alias cls="clear"

SHELL_CONF_PATH="$HOME/Repos/dotfiles/shell_conf"

confs=(base osx git go java php docker gg anaconda data_science)

# Loop through shell configuration files
for i in "${confs[@]}"
do
  # Source file, if it exists
  if [ -f "$SHELL_CONF_PATH/$i" ]; then
    source "$SHELL_CONF_PATH/$i"
  fi
done

# Export $PATH environment variable
export PATH

source $HOME/Repos/goto/goto.sh

