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

# Step 3: Running

    docker run -d -p 80:80 -p 3000:3000 tghastings/cloud9-esaas
    
You can add a workspace as a volume directory with the argument *-v /your-path/workspace/:/workspace/* like this :

    docker run -d -p 80:80 -p 3000:3000 -v /your-path/workspace/:/workspace/ tghastings/cloud9-esaas

# Step 4: Accessing Cloud9

    http://localhost

# Step 5: Rails Usage

You can now clone a rails repo or create a new application using the cloud9 terminal:

    rails new app_name

# Step 6: Running Server

After creating the new application cd into the directory and run the server:

    cd app_name

and run:

    rails s -b 0.0.0.0

# Step 7: Accessing The Server

    http://localhost:3000