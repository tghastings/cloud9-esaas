This repository contains Dockerfile of Cloud9 IDE running on Alpine Linux for Docker's automated build published to the public Docker Hub Registry.

# Step 1: Docker Installation

## Windows

### Windows Pro / Education Editions

    https://docs.docker.com/docker-for-windows/install/

### All Other Windows Editions

    https://docs.docker.com/toolbox/toolbox_install_windows/

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

You can mount a directory as a volume with the argument \*-v /your-path/directory/:/root/ like this :

    docker run -d -p 80:80 -p 3000:3000 -v /your-path/local/working/directory/:/root/ tghastings/cloud9-esaas

# Step 4: Accessing Cloud9

## Windows Pro, Windows Education, MacOS, & Linux

    http://localhost

## All Other Windows

    http://192.168.99.100

# Step 5: Rails Usage

You can now clone a rails repo or create a new application using the cloud9 terminal:

    rails new app_name

# Step 6: Running the Rails Application

After creating the new application cd into the directory and run the server:

    cd app_name

and run:

    rails s -b 0.0.0.0

# Step 7: Accessing The Rails Application

## Windows Pro, Windows Education, MacOS, & Linux

    http://localhost:3000

## All Other Windows

    http://192.168.99.100:3000