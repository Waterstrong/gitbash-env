#!/bin/sh

DEFAULT_COMMAND='./gradlew clean assemble cleanIdea idea'
execute 'reload' "${DEFAULT_COMMAND}"