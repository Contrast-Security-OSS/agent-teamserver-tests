#! /bin/bash

# Do we need to get an agent?
if [ -a contrast.jar ]
then
    echo "Already downloaded agent"
else
    ./get-agent.sh
fi

# Do we need to get WebGoat?
if [ -a WebGoat.jar ]
then
    echo "Already downloaded WebGoat"
else
    ./get-webgoat.sh
fi



if [ -a contrast.jar ] && [ -a WebGoat.jar ]
then
    java -javaagent:contrast.jar -jar WebGoat.jar
else
    echo "Need contrast.jar and WebGoat to run."
    exit;
fi
