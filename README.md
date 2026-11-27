# moonarch 🌙

A **simple, black-and-white** Arch Linux + Hyprland setup.

> 🚧 `install.sh` is a work in progress.

## Install (when install.sh is ready)

Install plain Arch with `archinstall`, then:

```bash
git clone https://github.com/A2u4/moonarch.git ~/moonarch
cd ~/moonarch && bash install.sh
```

## What's inside

Each folder in `config/` is linked to `~/.config/` with a symlink, so editing either one changes the same file.

| Folder | App | What it does |
|---|---|---|
| `config/hypr/` | Hyprland | black background, gray borders, keys, autostart |
| `config/foot/` | foot | terminal: black and white, font size 10 |
| `config/nvim/` | Neovim | line numbers, system clipboard, gray theme |
| `config/walker/` | walker | launcher with a black-and-white theme |
| `config/waybar/` | waybar | top bar: workspaces, day and time, bt, wifi, volume (text only) |
| `config/dunst/` | dunst | small black-and-white notifications |
| `config/fastfetch/` | fastfetch | BlackArch logo with a gray sword |
| `config/bash/bashrc` | bash | runs fastfetch in every new terminal (linked to `~/.bashrc`) |

## Keys

| Keys | What |
|---|---|
| Win + Space | launcher (walker). Type `:` first to search the clipboard history |
| Win + Shift + S | select an area: screenshot saved to ~/Pictures/Screenshots and copied |
| Win + T | terminal (foot) |
| Win + Q | close the window |
| Win + E | files (dolphin) |
| Win + 1…9 | go to a workspace |
| Win + Shift + 1…9 | move the window to a workspace |
