curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

set -l fisher_apps PatrickF1/fzf.fish jethrokuan/z evanlucas/fish-kubectl-completions edc/bass rbenv/fish-rbenv
set -l fisher_list (fisher list) | grep -v "jorgebucaran/fisher"
for i in $fisher_apps
    if not contains $i $fisher_list
        fisher install $i
    end
end
