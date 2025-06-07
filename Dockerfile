ARG BUILD_FROM
FROM $BUILD_FROM

# Install required packages
RUN apk add --no-cache \
    samba \
    samba-common-tools \
    util-linux \
    bash \
    tzdata

# Copy root filesystem
COPY rootfs /

# Set executable permissions
RUN chmod a+x /etc/services.d/samba/run \
    && chmod a+x /etc/services.d/samba/finish \
    && chmod a+x /usr/bin/run.sh

# Create mount point
RUN mkdir -p /mnt/external_disk

# Create samba directories
RUN mkdir -p /var/lib/samba/private \
    && mkdir -p /var/log/samba \
    && mkdir -p /run/samba

CMD ["/usr/bin/run.sh"]
