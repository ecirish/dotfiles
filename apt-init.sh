#!/bin/bash

. ./apt-init/log.sh && \

./apt-init/update.sh && \

./apt-init/installers/aptitude.sh && \
./apt-init/installers/core.sh && \

# Set fish as default shell
log "Setting fish as default shell:" && \
usermod -s `which fish` $USER && \
usermod -s `which fish` root && \

./apt-init/update-sudoers.sh && \

./apt-init/update-defaults.sh && \

log "Done!"
