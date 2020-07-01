#!/bin/bash

. ./apt-init/log.sh && \

log "Installing NVM:" && \
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash