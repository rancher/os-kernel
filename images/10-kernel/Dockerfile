#FROM alpine:3.4
## FROM arm64=skip arm=skip
#RUN apk --purge --no-cache add kmod bash


FROM linuxkit/toybox-media:eee3dd4d72cd784801e95b1781e6c4f9d8a5e5eb@sha256:7f940e687164ee2676e11c61705c79f7dd2d144ee87ad17a494848a7045f5f53
ARG KERNEL_VERSION
ENV KERNEL_VERSION=${KERNEL_VERSION}
ENTRYPOINT []
CMD []
WORKDIR /
COPY /kernel /
COPY /System.map /
#COPY kernel-headers.tar /
COPY /kernel.tar /
#COPY kernel-dev.tar /
#COPY kernel-source-info /

