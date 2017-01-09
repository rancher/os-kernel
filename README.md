

# Build kernel release archives for use in building RancherOS

**Fill me in**

## packaging your own kernel builds

Assuming you have some kernel source you have built in `/usr/src/linux-4.8`, you can
package up the result by running 

```
./scripts/package-kernel --srcdir /usr/src/linux-4.8
```

You may need to adjust the expected module list files.

