# dotfiles

These are my dotfiles for my laptop running Arch Linux.

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

I use Hack [Nerd Font](https://www.nerdfonts.com/) both in the terminal and in
the status bar.  For the Japanese numbers I use Sazanami Mincho.

## Screenshots

![](/docs/screenshots/screen-2022-04-17-19-33_full.png)
![](/docs/screenshots/screen-2022-04-17-21-57_full_000.png)

<hr>

[Wallpaper from GUWEIZ](https://wallhaven.cc/w/1kj9o3)

## List of programs I use

* Text Editor: ~~emacs~~ [neovim](https://github.com/neovim/neovim/)
* Window Manager: [dwm](https://dwm.suckless.org/)
* Terminal Emulator: [st](https://st.suckless.org/)
* X Menu: [dmenu](https://tools.suckless.org/dmenu/)
* Browser: [qutebrowser](https://qutebrowser.org/)
* Shell: [zsh](https://www.zsh.org/)
* Media Player: [mpv](https://mpv.io/)
* Document Reader: [zathura](https://pwmt.org/projects/zathura/)

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
