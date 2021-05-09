function copy -d "Copy to clipboard"
    switch (uname)
        case Linux
            xclip -selection c
        case Darwin
            pbcopy
    end
end
