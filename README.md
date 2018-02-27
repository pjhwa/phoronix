# docker-phoronix
Benchmarking docker container with phoronix test suite

This project deploys a docker container with Phoronix Test Suite installed, as well as a couple of tests that are predefined in the Dockerfile.  

The purpose of this container will solely be to benchmark your docker-machine.  
For ease of use, a couple of 'make commands' are supplied within this repo.

## Installation


After cloning the repository, just execute these commands:

#### Building the docker-phoronix image  

```
$ make bench_build
```

#### Usage

```
$ make bench
```

This will run the container together with the supplied script. The script returns a menu from which you can choose an option.

![alt text](img/docker-phoronix.png "Menu")

After you exit from this menu, the docker-phoronix container will be automatically removed.

NOTE: Don't use CTRL+C to exit the make command. This could result in the script being stuck in a loop and you will have to kill and remove the container manually.

#### Ubuntu version of docker-phoronix

This Dockerfile is modified by Jerry Park and you can make phoronix docker image based on Ubuntu 16.04 version.

You can find from the original version of phoronix docker image from https://github.com/t0t0/docker-phoronix . 
