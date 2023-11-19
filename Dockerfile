# The base image
FROM jenkins/jenkins:latest-jdk21

# Switch to root user to install new software/tools
USER root

# Upgrade the core packages
RUN apt update && apt upgrade

# Install some packages
RUN apt install -y wget sudo

# Add Microsoft package repository
RUN wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
	dpkg -i packages-microsoft-prod.deb && \
	rm packages-microsoft-prod.deb
	
# Install .NET SDK(s)
RUN apt update && apt install -y dotnet-sdk-8.0

# Switch back to jenkins user
USER jenkins