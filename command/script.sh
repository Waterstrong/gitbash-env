#!/bin/sh

HELP_URL='https://github.com/Waterstrong/shall/blob/master/README.md'

open_help_page() {
    open "${HELP_URL}"
}

goto_script_home() {
    cd "${SCRIPT_HOME}"
    echo "> cd ${SCRIPT_HOME}"
}

case $1 in
    usage | help) open_help_page;;
    *) goto_script_home;;
esac