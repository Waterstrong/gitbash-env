#!/bin/sh

command_type=$1
default_command=$2
current_dir=$PWD
project_name=${current_dir##*/}
name_key="${project_name//-/_}"
command=app_${name_key}_${command_type}

if [ -z "${!command}" ]; then
    command=default_command
fi

echo "> ${!command}"
eval "${!command}"