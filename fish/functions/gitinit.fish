function gitinit -d "Setup a new git repository"
    # Use main as default branch
    git init -b main

    # Create base set of files
    touch .gitignore
    touch README.md
    touch CONTRIBUTING.md

    # Add project name to README.md
    echo "#" (basename (pwd) | string split -r -m1 .)[1] > README.md

    # Setup Taskfile
    task --init

    set -l precommit '
repos:
- repo: local
  hooks:
  - id: gitleaks
    name: gitleaks
    description: Detect hard-coded secrets with Gitleaks
    entry: zricethezav/gitleaks
    language: docker_image
'
    echo $precommit > .pre-commit-config.yaml
    pre-commit install
end