ARG BUILD_FROM=ghcr.io/hassio-addons/debian-base/amd64:5.3.1
FROM ${BUILD_FROM}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]


# Copy root filesystem
COPY rootfs /

# Install packages
RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    && apt-get install -y curl  \
    && curl -L https://github.com/pooler/cpuminer/releases/download/v2.5.1/pooler-cpuminer-2.5.1-linux-x86_64.tar.gz > pooler-cpuminer-2.5.1-linux-x86_64.tar.gz \
    && ls -la \
    && tar -xvf pooler-cpuminer-2.5.1-linux-x86_64.tar.gz \
    && install minerd /usr/bin/minerd \
    # Set Permissions
    && chmod a+x /usr/bin/minerd

# Environment Variables From Pl
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

USER root

LABEL \
    io.hass.name="Minerd" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Unisec LTDA <devops@unisec.com.br>" 