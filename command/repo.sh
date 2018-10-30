#!/bin/sh

repo_origin=$(git remote get-url origin)
repo_name=$(basename ${repo_origin} .git)
project_key=$(basename ${repo_origin%${repo_name}.git})

repo_url="https://bitbucket.org/projects/${project_key}/repos/${repo_name}/browse"

echo "> Open repository url: ${repo_url}"
open ${repo_url}