#!/bin/sh

DEFAULT_JAVA=8

set_alias() {
    alias "$1"="$2"
    alias ".$1"="$2"
}

load_project_dir_alias() {
    for project in "${PROJECT_HOME}"/*; do
        if [ -d "$project" ]; then
            project_name=${project##*/}
            name_key="${project_name//-/_}"
            java_version=app_${name_key}_java
            opts_value=app_${name_key}_opts
            alias_value=app_${name_key}_alias
            cmd_content="cd ${project};echo '> cd ${project}'"

            if [ ! -z "${!java_version}" ]; then
                cmd_content="${cmd_content};jdk${!java_version}"
            elif [ -e "${project}/gradlew" ]; then
                cmd_content="${cmd_content};jdk${DEFAULT_JAVA}"
            fi

            if [ ! -z "${!opts_value}" ]; then
                cmd_content="${cmd_content};${!opts_value}"
            fi

            set_alias "$project_name" "${cmd_content}"

            if [ ! -z "${!alias_value}" ]; then
                set_alias "${!alias_value}" "$project_name"
            fi
        fi
    done
}

eval $(parse_yaml "${SCRIPT_HOME}"/apps.yml 'app_')

load_project_dir_alias