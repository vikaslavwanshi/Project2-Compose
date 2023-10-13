FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg

# Add the Docker GPG key
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Add the Docker repository for the "bullseye" distribution (Debian 11)
RUN echo "deb [arch=amd64] https://download.docker.com/linux/debian bullseye stable" > /etc/apt/sources.list.d/docker.list

# Install the Docker client
RUN apt-get update && apt-get install -y docker-ce-cli

USER jenkins
