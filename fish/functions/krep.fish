function krep -d 'Kubectl grep' -w grep
    kubectl get all -A -o wide | grep $argv
end