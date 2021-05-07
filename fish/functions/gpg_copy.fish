function gpg_copy -d "Copy gpg signing key to clipboard"
    switch (uname)
        case Linux
            gpg --armor --export $argv | xclip -selection c
        case Darwin
            gpg --armor --export $argv | pbcopy
    end
end
