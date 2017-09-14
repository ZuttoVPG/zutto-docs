# Technical Architecture
## Overview
ZuttoPets is built from several distinct pieces:

- Relational database (Postgres)
- RESTful API (Lumen/PHP)
- UI (Vue.js)
- NodeBB (Express/node.js)
	- Zutto SSO shim (node.js)
- Webserver terminating HTTPS (Apache)

All of these components are open-source projects that will be open & free for anyone to examine, customize, or deploy.

## Major Topics
### Authentication
### Forum Integration
### Drop Tables
Drop tables will drive all of the RNG decisions. Drop tables can be configured and reused, and the individual tiers can also be reused across tables or within the same table.

[todo insert ER diagram]



## Server
- backups
- load balance/redundancy
- notes on moving to AWS?
