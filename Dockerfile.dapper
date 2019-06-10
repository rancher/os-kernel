FROM gcc:8.3.0
# FROM arm64=arm64v8/gcc:8.3.0

RUN apt-get update \
    && apt-get install -y \
        ccache \
        vim \
        gnupg2 \
        locales \
        bc \
        kmod \
        libelf-dev \
        bison \
        flex \
    && rm -f /bin/sh && ln -s /bin/bash /bin/sh

# Install dapper
RUN curl -sL https://releases.rancher.com/dapper/latest/dapper-$(uname -s)-$(uname -m | sed 's/arm.*/arm/') > /usr/bin/dapper \
    && chmod +x /usr/bin/dapper

ENTRYPOINT ["./scripts/entry"]
CMD ["ci"]

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

ARG DAPPER_HOST_ARCH
ENV HOST_ARCH=${DAPPER_HOST_ARCH} ARCH=${DAPPER_HOST_ARCH}

ENV DAPPER_DOCKER_SOCKET true
ENV DAPPER_SOURCE /source
ENV DAPPER_OUTPUT ./dist
#ENV DAPPER_RUN_ARGS --privileged
ENV SHELL /bin/bash
ENV HOME ${DAPPER_SOURCE}
WORKDIR ${DAPPER_SOURCE}

ARG OS_REPO=rancher
ARG KERNEL_TAG
ARG KERNEL_VERSION=${KERNEL_TAG}-${OS_REPO}

ARG FIRMWARE_TAG=20190514

ENV OS_REPO=${OS_REPO} \
    DOCKER_URL=DOCKER_URL_${ARCH} \
    DOCKER_URL_amd64=https://get.docker.com/builds/Linux/x86_64/docker-1.10.3 \
    DOCKER_URL_arm64=https://github.com/rancher/docker/releases/download/v1.10.3-ros1/docker-1.10.3_arm64 \
    KERNEL_TAG=${KERNEL_TAG} \
    KERNEL_VERSION=${KERNEL_VERSION} \
    KERNEL_URL=https://cdn.kernel.org/pub/linux/kernel/v4.x/ \
    KERNEL_TAR=linux-${KERNEL_TAG}.tar.xz \
    KERNEL_SIGN=linux-${KERNEL_TAG}.tar.sign \
    FIRMWARE_TAG=${FIRMWARE_TAG} \
    KERNEL_ARCH=x86
# for rc testing
#ENV KERNEL_URL=https://cdn.kernel.org/pub/linux/kernel/v4.x/testing/linux-${KERNEL_TAG}.tar.xz

# Install Docker
RUN curl -fL ${!DOCKER_URL} > /usr/bin/docker && \
    chmod +x /usr/bin/docker
