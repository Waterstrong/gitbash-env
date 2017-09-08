#!/bin/sh

param=$1

if [ "${param}" == 'list' ]; then
    for project in ${PROJECT_HOME}/*; do
        if [ -d "${project}" ]; then
            project_name=${project##*/}
            echo "$project_name"
        fi
    done
else
    cd ${PROJECT_HOME}
    echo "cd ${PROJECT_HOME}"
fi