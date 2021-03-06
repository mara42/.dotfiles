#!/bin/bash
(
    cd $HOME
    git clone --depth=1 https://github.com/mkjmdski/.dotfiles.git
    cd .dotfiles
    for directory in zsh .hooks git tmux vim vscode; do
        (
            cd $directory
            ./install.sh
        )
    done
)
ZPLUG_UPDATE=true BREW_UPDATE=true GEMS_UPDATE=true zsh