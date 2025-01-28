## Steps to bootstrap a new computer

1. Install chezmoi on a completely new PC

```zsh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply martimgaspar
```

2. Updating it

```zsh
chezmoi update -v
```
