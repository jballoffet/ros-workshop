# ros-jupyter-docker

Dockerfile for Robot Operating System and Jupyter Notebooks

## Before

### Install Docker

Install Docker (if you have Ubuntu follow [this link](https://docs.docker.com/install/linux/docker-ce/ubuntu/)) and configure [this](https://docs.docker.com/install/linux/linux-postinstall/) too:

```sh
sudo groupadd docker

sudo gpasswd -a ${USER} docker

sudo service docker restart
```

### Build the Docker image for the project

```sh
./scripts/build.sh
```

## Try it

```sh
./scripts/run.sh
```

Open a web browser and type localhost:8888. Insert the **password**.

## [Index of Python notebooks](notebooks/README.md)

## After

```sh
./scripts/stop.sh
```

## Original version

- [https://github.com/vaibhavviswanathan/ros-jupyter-docker](https://github.com/vaibhavviswanathan/ros-jupyter-docker)
