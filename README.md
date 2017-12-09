<<<<<<< HEAD
Ubiq Network Intelligence API
============
=======
Ethereum Classic Network Intelligence API
============
[![Build Status][travis-image]][travis-url] [![dependency status][dep-image]][dep-url]

This is the backend service which runs along with ethereum and tracks the network status, fetches information through JSON-RPC and connects through WebSockets to [etc-netstats](https://github.com/Machete3000/etc-netstats) to feed information. For full install instructions please read the [wiki](https://github.com/Machete3000/etc-net-intelligence-api/wiki/Network-Status-Client-Setup).
>>>>>>> 8dc4dbda28e4d7088826f5b638a5074ba62f1e44

This is the backend service which runs along with ubiq and tracks the network status, fetches information through JSON-RPC and connects through WebSockets to the [ubiq netstats page](http://ubiq.darcr.us) to feed information.

## Prerequisite
* gubiq
* node
* npm


## Installation
```bash
<<<<<<< HEAD
sudo npm install -g pm2
npm install
=======
bash <(curl https://raw.githubusercontent.com/Machete3000/etc-net-intelligence-api/master/bin/build.sh)
>>>>>>> 8dc4dbda28e4d7088826f5b638a5074ba62f1e44
```

## Configuration

<<<<<<< HEAD
Configure the app modifying app.json.
=======
Configure the app modifying [processes.json](/etc-net-intelligence-api/blob/master/processes.json). Note that you have to modify the backup processes.json file located in `./bin/processes.json` (to allow you to set your env vars without being rewritten when updating).
>>>>>>> 8dc4dbda28e4d7088826f5b638a5074ba62f1e44

```json
"env":
	{
		"NODE_ENV"        : "production", // tell the client we're in production environment
		"RPC_HOST"        : "localhost", // ubiq JSON-RPC host
		"RPC_PORT"        : "8588", // ubiq JSON-RPC port
		"LISTENING_PORT"  : "30388", // ubiq listening port (only used for display)
		"INSTANCE_NAME"   : "", // whatever you wish to name your node
		"CONTACT_DETAILS" : "", // add your contact details here if you wish (email/skype)
<<<<<<< HEAD
		"WS_SERVER"       : "wss://ubiq.darcr.us", // path to ubq-netstats WebSockets api server
		"WS_SECRET"       : "contact xocel or sigwo in the ubiq slack", // WebSockets api server secret used for login
=======
		"WS_SERVER"       : "ws://rpc.etcstats.net", // path to etc-netstats WebSockets api server
		"WS_SECRET"       : "5ceuMix4qSM6APj7QwTPU", // WebSockets api server secret used for login
>>>>>>> 8dc4dbda28e4d7088826f5b638a5074ba62f1e44
		"VERBOSITY"       : 2 // Set the verbosity (0 = silent, 1 = error, warn, 2 = error, warn, info, success, 3 = all logs)
	}
```

## Run

Run it using pm2:

```bash
pm2 start app.json
```
<<<<<<< HEAD
=======

## Updating

To update the API client use the following command:

```bash
~/bin/www/bin/update.sh
```

It will stop the current netstats client processes, automatically detect your ethereum implementation and version, update it to the latest develop build, update netstats client and reload the processes.

[travis-image]: https://travis-ci.org/Machete3000/etc-net-intelligence-api.svg
[travis-url]: https://travis-ci.org/Machete3000/etc-net-intelligence-api
[dep-image]: https://david-dm.org/Machete3000/etc-net-intelligence-api.svg
[dep-url]: https://david-dm.org/Machete3000/etc-net-intelligence-api
>>>>>>> 8dc4dbda28e4d7088826f5b638a5074ba62f1e44
