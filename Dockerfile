FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg

# Install the Docker client using the official Docker installation script
RUN curl -fsSL https://get.docker.com | sh

USER jenkins
