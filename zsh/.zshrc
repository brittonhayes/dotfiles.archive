# Path to my oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(
    z
	git
	golang
    zsh-autosuggestions
    zsh-completions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
fpath=(~/.zsh/completions/ $fpath)

# USER CONFIG
export EDITOR="vim"
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin:~/bin"

# EDITOR
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
 else
  export EDITOR='vim'
fi

# ALIASES
alias vi="vim"
alias pip="pip3"
alias python="python3"
alias kubectl="k"

# FUNCTIONS
function gi() {
    curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;
}

# SHELL COMPLETION
complete -W "$(tldr 2>/dev/null --list)" tldr
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# PROMPT
autoload -U promptinit; promptinit
eval "$(starship init zsh)"
