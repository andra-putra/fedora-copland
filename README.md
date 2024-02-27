# Tob-Fedora Rice/Theme

My personal Fedora setup configs, including GNOME settings, custom keyboard layouts, and various dotfiles. Does this count as a rice already? Whatever, I like it so far. Might consider trying out SWAY in the future.

## Screenshots

### Current Wallpaper
![Current wallpaper](wallpapers/orangeautoflame_wpp.png)

### Desktop using [Forge TWM](https://github.com/forge-ext/forge)
![Screenshot](screenshots/fedora-copland-screenshot.png)
Note: Forge is a tiling window manager-like extension for Gnome.

### Firefox Theme
![Firefox Theme](screenshots/fedora-copland-firefox.png)
Note: The orange ring surrounding firefox you see is the "selected window" indicator from Forge TWM extension mentioned earlier.

### Colors are based on an [Edex-UI Theme](https://github.com/GitSquared/edex-ui/blob/master/media/screenshot_blade.png)
![edex-ui](screenshots/edex-ui.png)

## Contents

- `gnome-settings`: GNOME settings and extensions.
- `input-remapper-2`: Custom keyboard layouts and Input Remapper configurations.
- `scripts`: Installation and setup scripts.
- Dotfiles like `.p10k.zsh` : Configuration files for Zsh, Vim, and Powerlevel10k.

## Installation (WIP/作業中)

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/andra-putra/tob-fedorahttps://github.com/andra-putra/tob-fedora
   cd tob-fedora

### Firefox Setup
1. To use the `userChrome.css` file, you must first set these following things to `true` in about:config
-`toolkit.legacyUserProfileCustomizations.stylesheets`
-`devtools.chrome.enabled`
2. Then, locate your user profile folder by going to about:support and clicking on profile folder
3. Inside your profile folder, locate/create `chrome` folder
4. Place the `userChrome.css` file from this repo into that `chrome` folder

### ZSH Setup
Extensions enabled:
- [FZF-zsh-plugin](https://github.com/unixorn/fzf-zsh-plugin)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

## Gnome extensions
Currently have to be installed manually through the [Gnome Extensions website](https://extensions.gnome.org)
- App icons taskbar
- Color picker
- Custom accent colors
- Extensions list
- Forge
- Logo menu
- User Themes
- Vitals

## TODO
- Export `gnome-terminal` config colors, etc.
- Look into using alternate terminal emulator (something simple + tmux maybe?)
- Firefox: link chrome.css to other repo, upload color theme to this repo
