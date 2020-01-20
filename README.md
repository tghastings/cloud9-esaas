This repository contains Dockerfile of Cloud9 IDE running on Alpine Linux for Docker's automated build published to the public Docker Hub Registry.

# Step 1: Docker Installation

## Windows Pro

    https://docs.docker.com/docker-for-windows/install/

## For Other Windows Users

Docker Toolbox works for other Windows OSes. Your motherboard/computer must support virtualization - most machines have this, but you may need to turn it on . To use Toolbox with machines running Windows 7 and up, there are three options, the directions below are the easiest.

Install docker-toolbox (requires virtualbox) to run the docker daemon in a linux instance (no GUI). Handles installation for you. All can be done by following these instructions: https://docs.docker.com/toolbox/toolbox_install_windows/

In the terminal (the thing with a whale):

```
docker run -d -p 80:80 -p 3000:3000 tghastings/cloud9-esaas
```

In web browser: http://192.168.99.100 This opens cloud9 in your browser.

In cloud9 terminal:

```
rails new app
cd app
rails s -b 0.0.0.0
```

Back to your browser: http://192.168.99.100:3000/

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
