#!/usr/bin/with-contenv bashio

bashio::log.info "Starting External USB Disk Samba Share addon..."

# Start the S6 supervision system
exec /usr/bin/s6-svscan /etc/services.d/
