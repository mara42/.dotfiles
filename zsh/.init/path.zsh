#### LOAD BREW PATH ON LINUX
if [ -d "/home/linuxbrew/.linuxbrew" ]; then
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
    export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
fi

# Add go binaries
if [ -d "$GOPATH" ]; then
    export PATH="$GOPATH/bin:$PATH"
elif [[ $commands[go] ]]; then
    export PATH="$(go env GOPATH)/bin:$PATH"
fi

# Add yarn global binaries
if [[ $commands[yarn] ]]; then export PATH="$(yarn global bin):$PATH"; fi

# Add ruby gems
if [[ $commands[ruby] ]]; then export PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"; fi

# Add custom bin files
if [ -d "$HOME/bin" ]; then export PATH="$HOME/bin:$PATH"; fi
if [ -d "$HOME/.local/bin" ]; then export PATH="$HOME/.local/bin:$PATH"; fi
