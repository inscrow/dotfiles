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

The colorscheme I use is a slight modification of
[gruvbox](https://github.com/morhetz/gruvbox/), with white (`#ffffff`)
background and black (`#000000`) foreground and with a pink (`#bd856a`) accent
color.

### Font

I use [DejaVu nerd font](https://www.programmingfonts.org/#dejavu) for my
statusbar and the standard version for the terminal.  Japanese font is Sazanami
Mincho.

## Screenshots

![](/docs/screenshots/no-windows.png)

[Wallpaper](https://wallhaven.cc/w/1kj9o3)

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
* Compositor: xcompmgr
* Multiplexer: [tmux](https://github.com/tmux/tmux)

## st patches

* alpha
* blinking cursor
* gruvbox (light with some modification)
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
