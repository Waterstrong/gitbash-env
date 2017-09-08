#!/bin/sh

DEFAULT_COMMAND='./gradlew clean sonarqube --stacktrace'
execute 'sonar' "${DEFAULT_COMMAND}"