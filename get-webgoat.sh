#!/bin/sh

WG_VERSION=7
WG_JAR=WebGoat.jar
if [ $WG_VERSION -eq 7 ]
then
    wget -O $WG_JAR https://github.com/WebGoat/WebGoat/releases/download/7.1/webgoat-container-7.1-exec.jar
elif [ $WG_VERSION -eq 6 ]
then
    wget -O $WG_JAR https://webgoat.atlassian.net/builds/browse/WEB-WGM/latestSuccessful/artifact/shared/WebGoat-Embedded-Tomcat/WebGoat-6.0.1-war-exec.jar
else
    echo "No WebGoat version specified."
    exit;
fi
