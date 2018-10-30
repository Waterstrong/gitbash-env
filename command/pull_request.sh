#!/bin/sh

DEVELOP_BRANCH='develop'
MASTER_BRANCH='master'

repo_origin=$(git remote get-url origin)
repo_name=$(basename ${repo_origin} .git)
project_key=$(basename ${repo_origin%${repo_name}.git})

source_branch=$(git rev-parse --abbrev-ref HEAD)

target_branch=${DEVELOP_BRANCH}
if [ ! -z $1 ]; then
    target_branch=$1
fi

if ! (git branch | grep -q ${DEVELOP_BRANCH}); then
    target_branch=${MASTER_BRANCH}
fi

pull_request_url="https://bitbucket.org/projects/${project_key}/repos/${repo_name}/pull-requests?create$targetBranch=refs%2Fhead..."


if [ "${source_branch}" != "${target_branch}" ]; then
    echo "> Create pull request [${source_branch} -> ${target_branch}]"
    open ${pull_request_url}
else
    echo "> Unable to create pull request for same branch [${target_branch}]"
fi