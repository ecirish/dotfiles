#!/bin/bash

. ./apt-init/log.sh && \

log "Install global yarn packages:" && \

fish -c 'yarn global add \
  babel-eslint \
  eslint \
  eslint-config-airbnb \
  eslint-plugin-import \
  eslint-plugin-standard \
  eslint-plugin-jsx-a11y \
  eslint-plugin-react \
  ngrok \
  pm2 \
  @vue/cli \
  @feathersjs/cli'
