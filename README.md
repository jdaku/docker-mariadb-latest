# About this Repo

This Git repo is use official Docker image of mariadb. See the [Docker Hub page](https://hub.docker.com/_/mariadb/) for the full readme on how to use this.

## Latest mariadb docker image with ready to use with docker-compose 

## Prerequisites

Docker (**>= 1.12**) for MacOS / Linux: https://docs.docker.com/engine/installation

Docker Compose (**>= 1.8.0**) for MacOS / Linux: https://docs.docker.com/compose/install

## Default configuration

Images : latest
Port   : 3307
network: bridgh

Configuration file : _conf/mariadb.cnf

Default username and password : root

## Installation

First step is to make clone and go to directory.

cd mariadb-docker/

```
make build
```

The installation might take some time, so go for a coffee break! :coffee: 

When it is done, you can launch the containers using (in the root directory) :
```
make up
```

To stop the containers, run :
```
make down
```
**NB:**
At a new startup, you only have to launch the command `make up` to run the containers. The command `make build` has to be launched only if the `docker-compose.yml` has changed i.e. the configuration of a container has changed (and so we need to rebuild it).


## Make command 

Command | Description 
--- | --- 
build | `Builds the containers.` 
up | `Ups the  containers.` 
down | `Stops the containers, deletes their network and cleans the docker cache.` 
shell-mariadb  | `Connects through bash to the container.` 
tail-log | `Displays the Docker's logs of the MySQL container.`  

Enjoy !
