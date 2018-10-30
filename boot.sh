#!/bin/sh

"${SCRIPT_HOME}"/upgrade.sh

for libScript in "${SCRIPT_HOME}"/library/*; do
    source "${libScript}"
done

# Parse home.yml file and export Project and Java home
eval $(parse_yaml "${SCRIPT_HOME}"/home.yml 'home_')
export PROJECT_HOME=$home_project
export JAVA_6_HOME=$home_java6
export JAVA_7_HOME=$home_java7
export JAVA_8_HOME=$home_java8
export JAVA_HOME=$JAVA_8_HOME
export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH

# Load boot scripts
for bootScript in "${SCRIPT_HOME}"/boot/*; do
    source "${bootScript}"
done