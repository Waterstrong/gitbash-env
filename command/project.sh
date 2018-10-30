#!/bin/sh

REPO_PAGES=('https://bitbucket.org/projects/a' 'https://bitbucket.org/projects/b' 'https://bitbucket.org/projects/c')

scan_projects() {
    for project in "${PROJECT_HOME}"/*; do
        if [ -d "${project}" ]; then
            project_name=${project##*/}
            echo "${project_name}"
        fi
    done
}

open_repo_pages() {
    for page in "${REPO_PAGES[@]}"; do
        open "$page"
    done
}

goto_project_home() {
    cd "${PROEJCT_HOME}"
    echo "> cd ${PROEJCT_HOME}"
}

case $1 in
    list) scan_projects;;
    help | usage) open_repo_pages;;
    *) goto_project_home;;
esac