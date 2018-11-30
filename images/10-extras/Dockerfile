FROM alpine:3.8
# FROM arm64=arm64v8/alpine:3.8 arm=skip
RUN apk --purge --no-cache add kmod bash

ARG KERNEL_VERSION
ENV KERNEL_VERSION=${KERNEL_VERSION}

COPY extra.sh  /usr/bin
COPY /extras.tar.gz /
CMD ["extra.sh"]
