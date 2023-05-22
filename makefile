backup:
	rsync ~/.gitignore-global .
	rsync ~/.config/fish/config.fish .
	rsync ~/.prettierrc.cjs .