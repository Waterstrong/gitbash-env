#!/bin/sh

version="JAVA_${1}_HOME"
export JAVA_HOME=${!version}

if [ -z "${JAVA_HOME}" ]; then
    echo "> JAVA_HOME is not set..."
else
    export PATH=${JAVA_HOME}/bin;${JAVA_HOME}/jre/bin:$PATH
    echo '> Set the Java version...'
    java -version
fi