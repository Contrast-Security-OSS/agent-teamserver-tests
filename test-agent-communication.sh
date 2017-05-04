#! /bin/bash

./get-agent.sh

wget https://github.com/WebGoat/WebGoat/releases/download/7.1/webgoat-container-7.1-exec.jar

java -javaagent:contrast.jar -jar webgoat-container-7.1-exec.jar
