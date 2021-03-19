# Path to my oh-my-zsh installation.
export ZSH="/home/britton/.oh-my-zsh"
ZSH_THEME="ubunly"
plugins=(
  z
	git
	golang
	cargo
  docker
  zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
## LINUX SPECIFIC
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# USER CONFIG
export EDITOR="micro"
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin:~/bin"

## tldr
export TLDR_HEADER='magenta bold underline'
export TLDR_QUOTE='italic'
export TLDR_DESCRIPTION='cyan'
export TLDR_CODE='red'
export TLDR_PARAM='blue'

# EDITOR
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='micro'
 else
  export EDITOR='micro'
fi

# ALIASES
alias vi="vim"
alias zerotier="sudo zerotier-one.zerotier-cli"
alias pip="pip3"
alias python="python3"
alias vpn="protonvpn-cli"
alias kubectl="k"


# FUNCTIONS
function gi() {
    curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;
}

# SHELL COMPLETION
complete -W "$(tldr 2>/dev/null --list)" tldr
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# PROMPT
# eval "$(starship init zsh)"
