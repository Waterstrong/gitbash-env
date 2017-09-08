#!/bin/sh

param=$1

if [ "${param}" == 'usage' ]; then
    open 'https://github.com/Waterstrong/gitbash-env/blob/master/README.md'
else
    cd ${SCRIPT_HOME}
    echo "cd ${SCRIPT_HOME}"
fi