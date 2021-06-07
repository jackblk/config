# Settings

Add to `.zshrc`

```
plugins=(
    git
    fast-syntax-highlighting
    zsh-autosuggestions
)
```

# Plugins

## zsh-autosuggestions
[Repo](https://github.com/zsh-users/zsh-autosuggestions)

Install:

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## fast-syntax-highlighting
[Repo](https://github.com/zdharma/fast-syntax-highlighting)

Install:

```shell
git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```