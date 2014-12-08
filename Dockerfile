FROM ubuntu:trusty
MAINTAINER Jakob Westhoff <jakob@westhoffswelt.de>

# Install proper bash environment
COPY Library/Data/bashrc /root/.bashrc
COPY Library/Data/bash_aliases /root/.bash_aliases
COPY Library/Data/gitprompt.sh /root/.gitprompt.sh
COPY Library/Data/dircolors /root/.dircolors

# Update packages
RUN \
    apt-get update && \
    apt-get dist-upgrade --yes

# Install packages
RUN apt-get install --yes --no-install-recommends \
    ca-certificates \
    man \
    git \
    curl \
    build-essential
