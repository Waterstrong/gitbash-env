#!/bin/sh

DEFAULT_COMMAND='./gradlew checkstyleMain checkstyleTest'

execute 'checkstyle' "${DEFAULT_COMMAND}"