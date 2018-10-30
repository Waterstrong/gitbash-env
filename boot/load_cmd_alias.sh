#!/bin/sh

# Add alias to command
load_command_dir_alias() {
    for script in "${SCRIPT_HOME}"/command/{.,}*.sh; do
        command=${script##*/}
        alias "${command%.*}"="source $script"
    done
}

load_command_dir_alias

alias glw=./gradlew
alias open=start
alias stash=project
alias p=project
alias bitbucket=project
alias plr=pull_request
alias review=code_review