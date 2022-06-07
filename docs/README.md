# dotfiles

These are the dotfiles I use on my Linux laptop.

## Info

### Cloning

I manage my dotfiles with a git bare repository.  You can install the dotfiles
with

```
git clone --bare git@github.com:inscrow/dotfiles ~/dots
cd ~/dots
git checkout
```

**Note** this might override paths that are also present in the repository.

### Colorscheme

I'm using a slight modification of
[solarized](https://ethanschoonover.com/solarized/) dark with a black
background.  I'm using
[NeoSolarized](https://github.com/overcache/NeoSolarized) theme for neovim.

### Font

I use Monospace (DejaVu) [Nerd Font](https://www.nerdfonts.com/) for the status
bar and Monospace Regular in the terminal.  For the Japanese numbers I use
[AoyagiKouzanFontTOTF](https://opentype.jp/aoyagikouzanfontt.htm).

## Screenshots

![](/docs/screenshots/no-windows.png)

[Wallpaper](https://github.com/Haruno19/Haruno19/blob/main/configs/Wallpapers/kyoto%20streets.png)

![](/docs/screenshots/neofetch.png)

## List of programs I use

* Text Editor: ~~emacs~~ [neovim](https://github.com/neovim/neovim/)
* Window Manager: [dwm](https://dwm.suckless.org/)
* Terminal Emulator: [st](https://st.suckless.org/)
* X Menu: [dmenu](https://tools.suckless.org/dmenu/)
* Browser: [qutebrowser](https://qutebrowser.org/)
* Shell: [zsh](https://www.zsh.org/)
* Media Player: [mpv](https://mpv.io/)
* Document Reader: [zathura](https://pwmt.org/projects/zathura/)
* Notification Daemon: [dunst](https://dunst-project.org/)
* Data Processing: [root](https://root.cern.ch/)
* Compositor: picom
* Multiplexer: [tmux](https://github.com/tmux/tmux)

## st patches

* alpha
* blinking cursor
* solarized (dark with some modification)
* scrollback

## dwm patches

* alpha
* attachaside
* centretitle
* fullgaps
* movestack
* scratchpad
* smartborders
* swallow

I also manually added an icon to the left of the tags indicators in the bar.
The icon can be changed inside `config.h`.
