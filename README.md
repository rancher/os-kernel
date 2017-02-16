

# Build kernel release archives for use in building RancherOS


To build the tgz's and the kernel header & extras images, run:

`KERNEL_TAG=4.9.10 make release`

and if you're uploading them, set your GITHUB_TOKEN and login to docker hub, then run

(this requires https://github.com/aktau/github-release to be installed in your path)

`dist/publish.sh`

## packaging your own kernel builds

Assuming you have some kernel source you have built in `/usr/src/linux-4.8`, you can
package up the result by running 

```
./scripts/package-kernel --srcdir /usr/src/linux-4.8
```

You may need to adjust the expected module list files.

