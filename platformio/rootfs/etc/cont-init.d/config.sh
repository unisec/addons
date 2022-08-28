#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: PlatformIO
# ==============================================================================


declare USERNAME
declare PASSWORD

USERNAME="$(bashio::config 'username')"
PASSWORD="$(bashio::config 'password')"

if ! bashio::fs.directory_exists /data/workspace; then

    bashio::log.info "Making directorie workspace in /data"

    mkdir -p /data/workspace \
        || bashio::exit.nok 'Failed to create a persistent .workspace folder'
fi

platformio account login -u ${USERNAME} -p ${PASSWORD}