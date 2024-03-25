source ~/.config/fish/env.fish

# Start homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
set HOMEBREW_NO_AUTO_UPDATE 1

# Volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# Add IDE cli integrations
set PATH /Applications/Visual Studio Code.app/Contents/Resources/app/bin $PATH
set PATH /Applications/Sublime Text.app/Contents/SharedSupport/bin $PATH

# Cooler ls
set EXA_FLAGS "--all --icons --group-directories-first"
alias ls="eza $EXA_FLAGS --oneline"
alias tree="eza $EXA_FLAGS --git-ignore --tree"
alias files="eza --oneline"
alias vim="nvim"

alias cat="bat --theme=gruvbox-dark --paging=never --style=plain"
alias rm="rm -i"

# Git
alias gcm="git commit -m"
alias gst="git status"
alias gai="aicommits --generate 3"
alias gal="git add ."
alias gam="git commit --amend --no-edit"
alias git-recommit="git pull; git commit --amend --no-edit; git push -f;"

alias upgrade="brew update; brew upgrade --cask; pnpm -g --depth=0 update;"
alias update="sudo -S softwareupdate --all --install --force --restart;"

alias new="yarn create vite" # create new frontend project with vite
alias repl="NODE_PATH=$(npm root -g) node" # use global node_modules
alias ts-repl="NODE_PATH=$(npm root -g) ts-node"

alias reload="source ~/.config/fish/config.fish"

starship init fish | source

# pnpm
set -gx PNPM_HOME "/Users/$USER/Library/pnpm/"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
