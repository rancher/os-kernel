## RancherOS kernel builder

### Prerequisites

Docker, [Dapper](https://github.com/rancher/dapper/releases/latest)

### Build

#### For amd64 (x86_64):
```
ARCH=amd64 dapper
```

#### For arm64 (aarch64):

  1) Uncomment the `ENV KERNEL_URL_arm64=...` line in Dockerfile.dapper and provide your arm64 kernel sources .tar.gz URL
  2) Make sure `./config/kernel-config.arm64` exists and contains your kernel configuration (e.g. copy from ./config/kernel-config.arm64.sample)
  3) Run `ARCH=arm64 dapper`
