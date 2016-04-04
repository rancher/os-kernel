ARCH       := amd64

include build.conf.$(ARCH)


TARBALL := $(notdir $(KERNEL_URL))
SRC_DIR := $(TARBALL:.tar.gz=)


build: sources
	KERNEL_URL=$(KERNEL_URL) ./scripts/build-kernel

sources: /usr/src/$(SRC_DIR)

/usr/src/$(SRC_DIR):
	rm -rf $@
	mkdir -p $@
	wget -O - $(KERNEL_URL) | tar -xz -C $@ --strip-components=1
	cp config/kernel-config $@/.config


.PHONY: sources build
