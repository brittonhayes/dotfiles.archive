# Dotfiles

> My personal configurations and recipes that I just can't get enough of.

## Usage

If you have [Task](https://taskfile.dev) installed, you can use any of the following commands to automatically setup my dotfiles.

```shell
# Clone the repository into your home directory
git clone https://github.com/brittonhayes/dotfiles.git ~/dotfiles
```

```shell
❯ task -l

# task: Available tasks for this project:
* brew: 		    Install all brew packages
* setup: 		    Run all cross-platform setup commands
* setup:fonts: 		Install and setup Nerdfonts (OSX)
* setup:gitignore: 	Set system-wide gitignore
* setup:starship: 	Install and setup Starship prompt
* setup:tldr: 		Setup tldr shell client
* setup:vim: 		Install and setup spf13-vim
```

## Tools, Packages, and Configurations 🛠️

### Brew 🍻

All of my favorite brew taps

[View brewlist.txt](brewlist.txt)

### ZSH 🐚

All of my favorite functions, plugins, and aliases for ZSH.

[View .zshrc](.zshrc)

### Go 🐹

A list of a few of my favorite Go binaries

```text
github.com/cosmtrek/air
github.com/spf13/cobra/cobra
github.com/dave/courtney
github.com/go-delve/delve/cmd/dlv
github.com/mailru/easyjson
goa.design/goa/v3/...@v3
golang.org/x/tools/cmd/goimports
github.com/segmentio/golines
github.com/princjef/gomarkdoc/cmd/gomarkdoc
github.com/magefile/mage
github.com/client9/misspell/cmd/misspell
```

### Vim Config

My go-to VIM setup is basically [spf13-vim](https://github.com/spf13/spf13-vim) right out of the box. I tweak it here
and there, but he did a killer job, and I pretty much stick with his setup.

```shell
# Install spf13-vim for a bash
sh <(curl https://j.mp/spf13-vim3 -L)
```

### Alacritty

Alacritty is my terminal emulator of choice. It's wicked fast and lets me tinker to
my heart's content to make a sweet lil' terminal.

```shell
~/.config/alacritty/alacritty.yml
```

[Alacritty](https://github.com/alacritty/alacritty)

[My Alacritty Config](alacritty.yml)

### Gitignore

I have a system-wide gitignore for pesky directories and files that I don't ever want
committed to git repositories.

[My .gitignore](.gitignore-system)

```shell
git config --global core.excludesfile ~/dotfiles/.gitignore-system
```

## Aesthetic Stuff 👓

![image](https://user-images.githubusercontent.com/46035482/111584555-3d0e3300-877b-11eb-9fb1-83727904cd5e.png)

> This is what my shell prompt looks like. Nothin too crazy, but I'm into it. Gives all the info I need to know right inline.

### Starship Prompt 🚀

I use the starship prompt. It's pretty great. I recommend it.

[How to Install Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)

### Fonts 📜

I use the Nerd fonts library to pick and
choose my fonts for IDE and terminal.

The usual go-to is IBM Plex Mono aka `BlexMono Nerd Font`

[BlexMono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/IBMPlexMono)

[Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
