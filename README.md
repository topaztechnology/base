# Supported tags and respective `Dockerfile` links
* `latest` [(Dockerfile)](https://github.com/topaztechnology/base/blob/master/Dockerfile) - the latest release
* `3.8` [(Dockerfile)](https://github.com/topaztechnology/base/blob/master/Dockerfile) - release based on Alpine 3.8 and Containerpilot 3.8
* `3.6` [(Dockerfile)](https://github.com/topaztechnology/base/blob/master/Dockerfile) - release based on Alpine 3.6 and Containerpilot 3.6

# Overview

Docker image based on the [Alpine](https://hub.docker.com/_/alpine/) base image,  including Joyent's [Containerpilot](https://www.joyent.com/containerpilot).

On startup includes a basic `containerpilot.json5` file that sleeps in a while loop to keep the container alive.
