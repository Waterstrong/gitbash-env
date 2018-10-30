#!/bin/sh

BOOT_SCRIPT_OLD="export SCRIPT_HOME=$PWD;source $PWD/boot/load_config.sh"
BOOT_SCRIPT="export SCRIPT_HOME=$PWD;source $PWD/boot.sh"
BASH_PROFILE=~/.bash_profile

remove() {
    sed -i "\|$1|d" "${BASH_PROFILE}"
}

remove "${BOOT_SCRIPT}"
remove "${BOOT_SCRIPT_OLD}"