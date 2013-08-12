# My Dotfiles

Right now, repo contains aliases and gitconfig files. For both, it'll be good to create symlinks in your home directory.

    ln -s <dotfiles_path>/aliases ~/.aliases
    ln -s <dotfiles_path>/gitconfig ~/.gitconfig
    
*.gitconfig* file will be recognized by **git**, if it's installed. For *.aliases* file, you should add a line to your current shell's configuration file (`~/.bashrc` or `~/.zshrc`).

    source ~/.aliases