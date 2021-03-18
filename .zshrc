# Path to my oh-my-zsh installation.
export ZSH="/home/britton/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
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
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

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

# PROMPT
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"
