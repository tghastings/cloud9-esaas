This repository contains Dockerfile of Cloud9 IDE running on Alpine Linux for Docker's automated build published to the public Docker Hub Registry.

# Base Docker Image
From centurylink/alpine-rails

# Installation

## Install Docker.

Download automated build from public Docker Hub Registry: docker pull tghastings/cloud9-esaas

(alternatively, you can build an image from Dockerfile: docker build -t="tghastings/cloud9-esaas" github.com/tghastings/cloud9-esaas)

## Usage

    docker run -d -p 80:80 -p 3000:3000 tghastings/cloud9-esaas
    
You can add a workspace as a volume directory with the argument *-v /your-path/workspace/:/workspace/* like this :

    docker run -d -p 80:80 -p 3000:3000 -v /your-path/workspace/:/workspace/ tghastings/cloud9-esaas
    
## Build and run with custom config directory

Get the latest version from github

    git clone https://github.com/tghastings/cloud9-esaas
    cd cloud9-esaas/

Build it

    sudo docker build --force-rm=true --tag="$USER/cloud9-esaas:latest" .
    
And run

    sudo docker run -d -p 80:80 -p 3000:3000 -v /your-path/workspace/:/workspace/ $USER/cloud9-esaas:latest
    
Enjoy !!
