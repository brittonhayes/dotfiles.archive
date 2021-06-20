# Dotfiles

> My personal configurations and recipes that I just can't get enough of.

## Requirements

```shell
# Install Task to run setup cmds
brew install go-task/tap/go-task
```

## Usage

If you have [Task](https://taskfile.dev) installed, you can use any of the following commands to automatically setup my dotfiles. If you already have any of these tools configured, don't worry this won't overwrite your configs. Any found configs will be moved into a `.bak` copy of themselves.

```shell
# Clone the repository into your home directory
git clone https://github.com/brittonhayes/dotfiles.git ~/dotfiles
```

### List Available Tasks

```shell
❯ task

# task: Available tasks for this project:
* all:                  Run all setup commands
* pkg:brew:             Install all Brew packages
* pkg:golang:           Install all Go packages
* setup:alacritty:      Setup Alacritty configuration
* setup:fonts:          Setup Nerdfonts
* setup:git:            Setup global gitignore
* setup:pet:            Setup Pet CLI snippets manager
* setup:starship:       Setup Starship prompt
* setup:tldr:           Setup tldr
* setup:vim:            Setup vimrc
* setup:zsh:            Setup zsh
* setup:fish:           Setup fish
```

## Tools, Packages, and Configurations 🛠️

### Brew 🍻

All of my favorite brew taps

```shell
# Install brew packages
task pkg:brew
```

[My brew packages](brew/brewlist.txt)

### ZSH 🐚

All of my favorite functions, plugins, and aliases for ZSH.
This also installs `oh-my-zsh` as a conveniance if you don't have it.

```shell
# Setup ZSH config with oh-my-zsh
task setup:zsh
```

[View .zshrc](zsh/.zshrc)

### Fish 🐚

If you prefer fish, I've got a setup for that too.

```shell
# Setup fish config
task setup:fish
```

> To set fish as your default shell, use:
> `echo /usr/local/bin/fish | sudo tee -a /etc/shells`
> `chsh -s /usr/local/bin/fish`

### Go 🐹

A list of a few of my favorite Go binaries

```shell
# Install the Go packages
task pkg:golang
```

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
github.com/alphasoc/flightsim/...
```

### Vim/Neovim Config

My vim/neovim setup is basically a recreation of my go-to tools from VSCode stripped back for vim/neovim.
It sets up autocomplete, a file tree, vim-go, an integrated terminal and a few other goodies.

```shell
# Install vim setup
# 
# This sets up the vim and neovim configs

task setup:vim
```

[My Vimrc](vim/.vimrc)
[My Vim customizations](vim/.my_configs.vim)

![neovim](https://user-images.githubusercontent.com/46035482/122664030-98253c80-d153-11eb-84eb-8491f6302383.png)

### Alacritty

Alacritty is my terminal emulator of choice. It's wicked fast and lets me tinker to
my heart's content to make a sweet lil' terminal.

```shell
# Install my alacritty config
task setup:alacritty
```

[Alacritty](https://github.com/alacritty/alacritty)

[My Alacritty Config](alacritty/alacritty.yml)

### Gitignore

I have a system-wide gitignore for pesky directories and files that I don't ever want
committed to git repositories.

[My .gitignore](git/.gitignore-system)

```shell
# Setup my global gitignore
task setup:git
```

## Aesthetic Stuff 👓

![image](https://user-images.githubusercontent.com/46035482/111725294-0cce9f00-8824-11eb-8f0b-f0aac695b499.png)

> This is what my shell prompt looks like. Nothin too crazy, but I'm into it. Gives all the info I need to know right inline.

### Starship Prompt 🚀

I use the starship prompt. It's pretty great. I recommend it.

```shell
# Install and setup my custom starship prompt
task setup:starship
```

[How to Install Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)

### Fonts 📜

I use the Nerd fonts library to pick and
choose my fonts for IDE and terminal.

The usual go to is IBM Plex Mono aka `BlexMono Nerd Font`

```shell
# Install and setup fonts
task setup:fonts
```

[BlexMono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/IBMPlexMono)

[Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
