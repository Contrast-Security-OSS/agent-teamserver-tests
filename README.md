# Test Agent Download

A couple of shell scripts and optional variable file to test download a Contrast agent from TeamServer.

* `get-agent.sh` -- downloads the Contrast TeamServer agent
* `get-webgoat.sh` -- download a couple of different versions of WebGoat for agent onboarding test
* `onboard-agent-to-webgoat.sh` -- downloads the agent and starts WebGoat with agent in path.

### Prerequisites

Create a file `contrast-credentials.txt` in this folder with these variables.  You can find a sample file `contrast-credentials.txt.sample`

```
ORG_UUID=12345-abcd-defg-7809-424234123412
CONTRAST_API_KEY=EXAMPLEAPIKEY
CONTRAST_SERVICE_KEY=EXAMPLESERVICEKEY
CONTRAST_EMAIL=firstname.lastname@myawesomeemployer.net
```

You can find your ORG_ID in the url following pattern `/ng/{orgUuid}/agents/{profile}/{platform}`

The API and Service Key for your user can be by:
1. Log into TeamServer
2. Click top-right dropdown near your name
3. Select "Organization Settings"
4. In the Left-Hand Menu, select API.
5. Service Key and API key are found under Get Keys heading



Optionally include values for:
```
TEAMSERVER_URL=https://teamserver.awesomeemployer.net
AGENT_TYPE=java?jvm=1_5
DOWNLOAD_NAME=contrast.jar
```

### Usage

Download an Agent from TeamServer
```
$ ./get-agent.sh
```

Download WebGoat 6 or 7
```
$ ./get-webgoat.sh
```

Download an agent, webgoat, and start webgoat with agent onboarded
```
$ ./onboard-agent-to-webgoat.sh
```


## Authors

* **David Hafley**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
