# Test Agent Download

A shell script and optional variable file to test download a Contrast agent from TeamServer

### Prerequisites

Create a file `contrast-credentials.txt` in this folder with these variables.

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
TEAMSERVER_URL=
AGENT_TYPE=
DOWNLOAD_NAME=
```

### Usage


```
$ ./get-agent.sh
```


## Authors

* **David Hafley**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
