#!/bin/bash

. ./apt-init/log.sh && \

log "Installing git config:" && \
sudo --preserve-env=HOME -u $USER ln -rsfn .gitconfig ~/.gitconfig && \

log "Installing global gitignore:" && \
sudo --preserve-env=HOME -u $USER ln -rsfn .gitignore_global ~/.gitignore_global && \

log "Installing .vimrc:" && \
sudo --preserve-env=HOME -u $USER ln -rsfn .vimrc ~/.vimrc && \

log "Installing .eslintrc:" && \
sudo --preserve-env=HOME -u $USER ln -rsfn .eslintrc ~/.eslintrc && \

log "Installing fish config directory:" && \
sudo --preserve-env=HOME -u $USER mkdir -p ~/.config/fish && \

log "Installing fish config:" && \
sudo --preserve-env=HOME -u $USER ln -rsfn config.fish ~/.config/fish/config.fish
