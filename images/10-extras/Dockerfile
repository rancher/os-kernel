FROM alpine:3.4
# FROM arm64=skip arm=skip
RUN apk --purge --no-cache add kmod bash

ARG KERNEL_VERSION
ENV KERNEL_VERSION=${KERNEL_VERSION}

COPY extra.sh  /usr/bin
COPY /extras.tar.gz /
CMD ["extra.sh"]
