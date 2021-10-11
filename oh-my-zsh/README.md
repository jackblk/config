# Oh My Zsh

![example](https://user-images.githubusercontent.com/12843654/127991162-4c0d5703-2182-4a59-b7c7-e7bab600205d.png)

Agnoster + Powerline fonts


## Install ZSH

MacOS already has Zsh, if you have, don't need to install.

## Install Oh My Zsh

Install here: [Oh my zsh](https://ohmyz.sh/#install)

## Plugins

Follow this guide: [plugins](https://github.com/jackblk/config/blob/master/oh-my-zsh/plugins.md)

## Themes

Choose your theme at: [Oh My Zsh Themes](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)

Recommended:
* [robbyrussell](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#robbyrussell)
* [agnoster](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#agnoster) (require powerline fonts, install it later)

I use `agnoster`. To remove your PC name (user@macbook) in the shell, add `DEFAULT_USER=user` to your `~/.zshrc`.


Edit `~/.zshrc` with your new theme:
```
ZSH_THEME="agnoster"
```

## Install Powerline Fonts

Install here: [Powerline Fonts](https://github.com/powerline/fonts)

To install all fonts:

```bash
git clone https://github.com/powerline/fonts.git
cd powerline
chmod +x install.sh
./install.sh
```

I use [Meslo LG S Regular for Powerline](https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20S%20Regular%20for%20Powerline.ttf), click to download and open to install to your system.

## Apple Terminal

Use my OneHalf theme config: [OneHalf Dark](https://raw.githubusercontent.com/jackblk/config/master/oh-my-zsh/OneHalfDark.terminal)

Or OneHalf Theme from source: [OneHalf Dark & Light](https://github.com/sonph/onehalf/tree/master/terminal)

Config Profile: Terminal > Preferences > Profile Tab > Change Font. Choose your font in Powerline suite.

![apple terminal config profile](https://user-images.githubusercontent.com/12843654/127993293-33a5b21a-49a0-46b3-a6a8-9525c5f75c88.png)


Save & reload.
