ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

COPY rootfs /

# add aws-cli and deps
RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    && apt-get install \
        python3.10 \
        python3-pip \
        groff \
        less \
        jq \
        -y \
        && pip3 install --upgrade awscli