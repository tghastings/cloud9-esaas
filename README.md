This repository contains Dockerfile of Cloud9 IDE running on Alpine Linux for Docker's automated build published to the public Docker Hub Registry.

# Step 1: Docker Installation

## Windows

    https://docs.docker.com/docker-for-windows/install/

## Mac

    https://docs.docker.com/docker-for-mac/install/

## Linux

### CentOS

    https://docs.docker.com/install/linux/docker-ce/centos/

### Debian

    https://docs.docker.com/install/linux/docker-ce/debian/

### Fedora

    https://docs.docker.com/install/linux/docker-ce/fedora/ 

### Ubuntu

    https://docs.docker.com/install/linux/docker-ce/ubuntu/ 

### Binaries

    https://docs.docker.com/install/linux/docker-ce/binaries/ 

# Step 2: Pull Image

Download automated build from public Docker Hub Registry:

    docker pull tghastings/cloud9-esaas

# Step 3: Usage

    docker run -d -p 80:80 -p 3000:3000 tghastings/cloud9-esaas
    
You can add a workspace as a volume directory with the argument *-v /your-path/workspace/:/workspace/* like this :

    docker run -d -p 80:80 -p 3000:3000 -v /your-path/workspace/:/workspace/ tghastings/cloud9-esaas
