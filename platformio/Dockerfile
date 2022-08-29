ARG BUILD_FROM=ghcr.io/hassio-addons/debian-base/amd64:5.3.1
FROM ${BUILD_FROM}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]


# Copy root filesystem
COPY rootfs /

# Install packages
RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    && apt-get install python3-pip python3.10 libffi-dev libssl-dev build-essential python-dev -y  \
    && pip install --upgrade pip \
    && pip3 install platformio esphome \
    # Set Permissions
    && chmod +rwx /etc/cont-init.d/config.sh \
    && chmod +rwx /etc/services.d/run

# Environment Variables From PlatformIO
ENV PLATFORMIO_WORKSPACE_DIR=/data/workspace

ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

USER root

LABEL \
    io.hass.name="PlatformIO" \
    io.hass.description="Professional collaborative platform for embedded development" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Unisec LTDA <devops@unisec.com.br>" 
