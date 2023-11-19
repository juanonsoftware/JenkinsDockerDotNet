## General info
This repo contains Dockerfile to build a custom Jenkins image that support to compile / test .NET applications

## Howto
- To start a container (change path to jenkins_home folder):

docker run -itd --rm -p 8080:8080 -p 50000:50000 -v D:\Dev\Docker\Jenkins\jenkins_home:/var/jenkins_home --name jenkins-dotnet-v6 mydockercity/jenkins-dotnet-sdk:v6

- To access the container:

docker exec -it -u root jenkins-dotnet-v6 /bin/bash

- To build docker image:

docker build -t mydockercity/jenkins-dotnet-sdk .

## Specs
- Based on the latest Jenkins image jenkins/jenkins:latest-jdk21

- Added wget / sudo

- Added .NET SDK