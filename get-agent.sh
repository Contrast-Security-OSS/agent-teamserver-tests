#! /bin/bash

ORG_UUID=
CONTRAST_API_KEY=
CONTRAST_SERVICE_KEY=
CONTRAST_EMAIL=
TEAMSERVER_URL=
AGENT_TYPE=
DOWNLOAD_NAME=

# optionally set these variables in another file
if [ -a contrast-credentials.txt ]
then
    echo "Reading from credential file."
    source contrast-credentials.txt
fi

if [ -z "$TEAMSERVER_URL" ]
then
    echo "Using default TeamServer URL"
    TEAMSERVER_URL=https://app.contrastsecurity.com
fi

if [ -z "$AGENT_TYPE" ] || [ -z "$DOWNLOAD_NAME" ]
then
    echo "Setting default agent type to Java 1.5"
    AGENT_TYPE=java?jvm=1_5
    DOWNLOAD_NAME=contrast.jar
fi

if [ -z "$ORG_UUID"] || [ -z "$CONTRAST_API_KEY" ] || [ -z "$CONTRAST_SERVICE_KEY" ] || [ -z "$CONTRAST_EMAIL" ]
then
    echo "Required variables not set.  Exiting"
    exit;
fi

URL=$TEAMSERVER_URL/Contrast/api/ng/$ORG_UUID/agents/default/$AGENT_TYPE
CONTRAST_AUTHORIZATION_KEY=$(echo -ne "$CONTRAST_EMAIL:$CONTRAST_SERVICE_KEY" | base64);
HEADER_ACCEPT=Accept:application/json
HEADER_API_KEY=API-Key:$CONTRAST_API_KEY
HEADER_AUTH_KEY=Authorization:$CONTRAST_AUTHORIZATION_KEY

wget --header=$HEADER_ACCEPT   \
     --header=$HEADER_API_KEY  \
     --header=$HEADER_AUTH_KEY \
     $URL \
     -O $DOWNLOAD_NAME
