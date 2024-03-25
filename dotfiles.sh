rsync -r ~/.wezterm.lua .
rsync -r ~/.config/fish/config.fish .
rsync -r ~/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings sublime/
rsync -r ~/Library/Application\ Support/Sublime\ Text/Packages/User/*.sublime-snippet sublime/snippets/
rsync -r ~/.prettierrc.cjs .
rsync -r ~/.prettierignore .
git add .
git commit -m "Update dotfiles"