#!/bin/sh

CHANGE_TAG="Changes"

if git -C "${SCRIPT_HOME}" status | grep -iq "${CHANGE_TAG}"; then
    echo '\n The Shall script contains uncommitted changes. Do you want to discard them? Choose the number:\n'
    options=("Yes - Discard the changes!" "No  - Keep my local changes!")
    select yn in "${options[@]}"; do
        case $yn in
            "${options[0]}")
            git -C "${SCRIPT_HOME}" reset --hard > /dev/null 2>&1 &
            break;;
            "${options[1]}") break;;
        esac
    done
    echo ''
fi

git -C "${SCRIPT_HOME}" pull -r >/dev/null 2>&1 &