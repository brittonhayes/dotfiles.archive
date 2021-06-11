if not fisher &> /dev/null
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
end

set -l fisher_apps PatrickF1/fzf.fish jethrokuan/z evanlucas/fish-kubectl-completions edc/bass
set -l fisher_list (fisher list) | grep -v "jorgebucaran/fisher"
for i in $fisher_apps
    if not contains $i $fisher_list
        fisher install $i
    end
end
