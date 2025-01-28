ARG BUILD_FROM=ghcr.io/hassio-addons/base:16.3.6
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Setup base
# hadolint ignore=DL3003
RUN \
    apk add --no-cache --virtual .build-dependencies \
        build-base=0.5-r3 \
        git=2.45.3-r0 \
    \
    && apk add --no-cache \
        go=1.22.10-r0 \
        iptables=1.8.10-r3 \
        libqrencode-tools=4.1.1-r2 \
        openresolv=3.13.2-r0 \
        wireguard-tools=1.0.20210914-r4 \
    \
    && ln -sf /sbin/xtables-nft-multi /sbin/ip6tables \
    && ln -sf /sbin/xtables-nft-multi /sbin/iptables \
    && git clone --branch "0.0.20230223" --depth=1 \
        "https://git.zx2c4.com/wireguard-go" /tmp/wireguard \
    \
    && cd /tmp/wireguard \
    && make \
    && make install \
    \
    && rm -f -r /tmp/* \
    && apk del --no-cache --purge \
        .build-dependencies \
        go

# Copy root filesystem
COPY rootfs /

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="WireGuard" \
    io.hass.description="Fast, modern, secure VPN tunnel" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Franck Nijhof <frenck@addons.community>" \
    org.opencontainers.image.title="WireGuard" \
    org.opencontainers.image.description="Fast, modern, secure VPN tunnel" \
    org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
    org.opencontainers.image.authors="Unicontrol <addons@unicontrol.me>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://bitbucket.org/unisec/addons/wireguard" \
    org.opencontainers.image.documentation="https://docs.unicontrol.me/addons" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}