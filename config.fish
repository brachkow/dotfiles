eval "$(/opt/homebrew/bin/brew shellenv)"

# Set up brew node
set BREW_NODE 16
set PATH /opt/homebrew/opt/node@$BREW_NODE/bin $PATH
set LDFLAGS -L/opt/homebrew/opt/node@$BREW_NODE/lib
set CPPFLAGS -I/opt/homebrew/opt/node@$BREW_NODE/include

# Add IDE cli integrations
set PATH /Applications/Visual Studio Code.app/Contents/Resources/app/bin $PATH
set PATH /Applications/Sublime Text.app/Contents/SharedSupport/bin $PATH

# Cooler ls
set EXA_FLAGS "--all --icons --group-directories-first"
alias ls="exa $EXA_FLAGS --oneline"
alias tree="exa $EXA_FLAGS --git-ignore --tree"
alias files="exa --oneline"

alias cat="bat --theme=gruvbox-dark --paging=never --style=plain"
alias rm="rm -i"

alias upgrade="brew update; brew upgrade --cask; pnpm -g --depth=0 update;"
alias update="sudo -S softwareupdate --all --install --force --restart;"

alias new="yarn create vite" # create new frontend project with vite
alias repl="NODE_PATH=$(npm root -g) node" # use global node_modules
alias ts-repl="NODE_PATH=$(npm root -g) ts-node"

starship init fish | source

source ~/.config/fish/env.fish
# pnpm
set -gx PNPM_HOME "/Users/$USER/Library/pnpm/"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end