FROM alpine:3.4
# FROM arm64=skip arm=skip
RUN apk --purge --no-cache add kmod bash

ARG KERNEL_VERSION
ENV KERNEL_VERSION=${KERNEL_VERSION}

COPY headers.sh  /
COPY /build.tar.gz /
CMD ["/headers.sh"]
