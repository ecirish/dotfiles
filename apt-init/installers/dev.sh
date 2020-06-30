#!/bin/bash

. ./apt-init/log.sh && \

log "Installing dev packages:" && \
aptitude install \
  -y \
  -q \
  -o Dpkg::Options::="--force-confdef" \
  -o Dpkg::Options::="--force-confold" \
  -f \
  init-system-helpers \
  lsb-base \
  libdevmapper1.02.1 \
  libltdl7 \
  libsystemd0 \
  build-essential \
  fish \
  git \
  htop \
  openjdk-8-jdk \
  nodejs \
  yarn \
  vim \
  python3-dev \
  python3-pip \
  redis-server

log "Installing Fisherman:" && \
sudo -u $USER \
  curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher && \

log "Installing fish plugins:" && \
sudo -u $USER fish -c "fisher add FabioAntunes/fish-nvm" && \
sudo -u $USER fish -c "fisher add edc/bass" && \

log "Installing Node.js via nvm:" && \
fish -c 'nvm install latest' && \

log "Installing yarn:" && \
npm install --global yarn
