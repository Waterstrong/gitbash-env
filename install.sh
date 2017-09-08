#!/bin/bin

boot_script="export SCRIPT_HOME=$PWD;source $PWD/boot/load_config.sh"
bash_profile=~/.bash_profile

if [ -e ${bash_profile} ] && grep -iq "${boot_script}" ${bash_profile}; then
    echo '> The script already installed. Skipped...'
else
    echo "${boot_script}" >> ${bash_profile}
    echo '> The script installed successfully!'
fi

if [ ! -e home.yml ]; then
    cp home-template.yml home.yml
    read -p 'Press any key to continue editing the home.yml file...'
    vim home.yml
else
    echo '> The home.yml file already exists, nothing changed.'
fi

source ${bash_profile}
echo '> Refreshed the bash profile successfully!'
