

# Build kernel release archives for use in building RancherOS

**Fill me in**

## packaging your own kernel builds

Assuming you have some kernel source you have built in `/usr/src/linux-4.8`, you can
package up the result by running

```
./scripts/package-kernel --srcdir /usr/src/linux-4.8
```

To build your kernel, and then package it using the os-kernel config, you can run:

```
cp config/kernel-config  /usr/src/linux-4.8/.config
./scripts/build-kernel --srcdir  /usr/src/linux-4.8
./scripts/package-kernel --srcdir  /usr/src/linux-4.8
```

You may need to adjust the expected module list files.

## Notes

```
+: ${KERNEL_URL:="https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.8.1.tar.xz"}
+: ${KERNEL_SHA1:="af418cf983819e99fb4bd0c200a10d9568a2ac52"}
```
