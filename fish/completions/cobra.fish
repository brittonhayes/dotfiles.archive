set -l cobra_commands add help init

function __fish_complete_author_name
    echo (git config user.email)
    echo (git config user.name)
end

complete -x -c cobra -n "not __fish_seen_subcommand_from $cobra_commands" -a add -d "Add a command to a Cobra Application"

complete -x -c cobra -n "not __fish_seen_subcommand_from $cobra_commands" -a help -d "Help about any command"

complete -f -c cobra -n "not __fish_seen_subcommand_from $cobra_commands" -a init -d "Initialize a Cobra Application"

complete -x -c cobra -s l -l license -a "mit apache" -d "Set application license"

complete -x -c cobra -n "__fish_seen_subcommand_from init" -l pkg-name -d "fully qualified package name"

complete -x -c cobra -s a -l author -a "(__fish_complete_author_name)" -d "author name for copyright attribution"
