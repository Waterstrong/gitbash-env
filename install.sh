#!/bin/sh

source ./uninstall.sh

if [ -e ${BASH_PROFILE} ] && grep -iq "${BOOT_SCRIPT}" "${BASH_PROFILE}"; then
    echo '> The script already installed. Skipped...'
else
    echo "${BOOT_SCRIPT}" >> "${BASH_PROFILE}"
    echo '> The script installed successfully!'
fi

if [ ! -e home.yml ]; then
    cp home-template.yml home.yml
    read -p 'Press any key to continue editing the home.yml file...'
    vim home.yml
else
    echo '> The home.yml file already exists, nothing changed.'
fi

source ${BASH_PROFILE}
echo '> Refreshed the bash profile successfully!'
