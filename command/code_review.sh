#!/bin/sh

# To be updated

repo_origin=$(git remote get-url origin)
repo_name=$(basename ${repo_origin} .git)
project_key=$(basename ${repo_origin%${repo_name}.git})

review_url="https://bitbucket.org/projects/${project_key}/repos/${repo_name}/pull-requests"

echo "> Open code review url: ${review_url}"
open ${review_url}