function banner -d "create an ascii banner"
    set line ""

    # Loop over arguments and append -
    for i in $argv
        set chars (echo $i | wc -c)
        for char in (seq $chars)
            set -a line "-"
        end
    end

    # Print out top line with delim
    printf "|%s|\n" (string join $line " ")

    # Print out title
    set title "| $argv |"
    echo (string upper $title)

    # Print out lower line with delim
    printf "|%s|\n" (string join $line " ")
end
