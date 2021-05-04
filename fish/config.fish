# Initialize starship
starship init fish | source

# SET VARIABLES
set -gx EDITOR nvim
set -gx GOPATH "$HOME/golang"
set -gx GOBIN "$GOPATH/bin"
set -gx GO111MODULE "on"
set -gx PATH "$PATH:$GOPATH/bin:$GOROOT/bin"
set -gx GOSUMDB "off"

# ABBREVIATIONS
abbr -a k kubectl
abbr -a tf terraform

## go
abbr -a gr go run
abbr -a gb go build

## git
abbr -a gst git status
abbr -a gco git checkout
abbr -a ga git add
abbr -a gc git commit -S 
abbr -a gcam git commit -S -am 
abbr -a gl git pull
abbr -a gp git push

# FUNCTIONS
function fish_title
    echo (date +%I:%M)
end

function fish_greeting
end

function gi
    curl -sLw n https://www.toptal.com/developers/gitignore/api/$argv
end

function gitinit
    curl -sLw n https://www.toptal.com/developers/gitignore/api/osx > .gitignore
    git init -b main
    git add .gitignore
    echo Git Project Initialized
end

function notebook -d "Start a Jupyter datascience notebook container"
    echo Starting Jupyter notebook on "http://localhost:10000?token=<token>"
    docker run --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v "$PWD":/home/joyvan jupyter/datascience-notebook
end
