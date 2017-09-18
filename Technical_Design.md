# Technical Architecture
## Overview
ZuttoPets is built from several distinct pieces:

- Relational database (Postgres)
- RESTful API (Lumen/PHP)
	- SparkPost for emails (via REST)
	- Undetermined thing for queuing (probably redis?)
- Progressive web app frontend (Vue.js)
	- Bootstrap 4
- NodeBB (Express/node.js)
	- Zutto SSO shim (node.js)
- Webserver terminating HTTPS (Apache -- does it support http/2?)

All of these components are open-source projects that will be open & free for anyone to examine, customize, or deploy.

## Major Topics
### Authentication
### Forum Integration
### Roll Tables
Roll tables will drive all of the RNG decisions. The tables can be configured and reused, and the individual tiers can also be reused across tables or within the same table.

[todo insert ER diagram]

### Pet Traits
Pet traits can be shown visibly on the pet. For example, a 'Winged' trait may add some wings to the image. Instead of drawing a billion combinations of specie/skin/traits by hand, the system should be able to overlay traits onto the image.

This system would be an ideal candidate for existing as a standalone microservice. It would take in a skin image or URL (URL must be on a trusted domain list) and an array of traits with their image and attachment points.

It's likely a lot of pets will have the same configurations, so caching the response would be very effective here.

The stand-alone nature of this service would also make it easy for other projects to reuse it or for us to demo it during a preview phase.

#### Database
To store this data and accommodate the skin system, we'll need to break the data storage up a bit:

![Trait ER diagram](figures/trait_data_storage.png)

A single 'trait' will correspond to one piece of artwork. To be available, it must be mapped onto each pet skin through the `pet_skin_traits` table, which will contain the X/Y coordinates for attaching it. This same table will track z-index so we can resolve layering conflicts.

The same system can be used for player characters. The `pet_skin_traits` table may need to be either generic (along with `pet_skins`?), or we just make a separate `character_skin_traits` table with similar rows.

#### Generating the Image
As far as generating the images goes, the service will need to be aware of the consumer's screen resolution and DPI.

From there, it's just mangling assets into one image with Imagick. The layering and attachment point data will be sent in to the service.

Once the attachments are all added, the image should be scaled according to the consuming client's resolution.

Post-1.0, I would also like to add support for merging SVGs. This should enable us to have very responsive art assets for mobile and 4K displays, as well as having independently-animated base images and traits.

#### Tooling
The microservice should ship with a static page that will allow artists to load up a base image and a number of attachments, drag the attachments around, and generate the coordinates for each attachment point for loading into the DB.

## Server
- backups
- load balance/redundancy
- notes on moving to AWS?
