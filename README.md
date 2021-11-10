# Mastering Application Development using Python

A comprehensive workshop on Python, SQL, Docker, MongoDB, and more for Beginners via hands-on practice.

## Setup self-support lab for hands-on practice

Here are the instructions to set up self-support integrated lab with the material to learn Python.
* Clone GitHub repository
```shell
git clone https://github.com/itversity/mastering-app-development-python
```
* Open the project using Pycharm
* Create folder by name **itvdbpg_volume** in the project directory for Postgres database.
* Create Docker network.

```shell
docker network create itvlabnw
```
* Start the lab environment using `docker compose up -d`. It will bring up the docker containers for both database as well jupyterlab by building required images.
* Login into the Jupyter Lab environment using the token. You need to go to [http://localhost:8888](http://localhost:8888) using browser. Make sure to get the token using below command to complete the login.
```shell
docker compose exec itvlab cat .local/share/jupyter/runtime/jpserver-1.json
```

* Managing the lab environment using **docker compose**
```shell
# Teardown the complete enviroment
# Below command deletes volumes and images.
docker compose down -v --rmi all

# Bring up the environment by rebuilding the images
# Make sure to add build whenever there are changes to Docker related files.
docker compose up -d --build

# Review current state of the containers related to docker compose file
docker compose ps
```

* Connect to the containers via bash

```shell
docker compose exec itvlab bash
docker compose exec itvdbpg bash

# Connecting to Postgres Database as superuser
docker compose exec itvdbpg psql -U postgres
```