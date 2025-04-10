## Steps to bootstrap a new computer

1. Install chezmoi on a completely new PC

```zsh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:martimgaspar/dotfiles.git
```

2. Updating it (Pulling from repo to machine)

```zsh
chezmoi update -v
```

3. Updating the Repo
```zsh
chezmoi add ~/.config/test
```
