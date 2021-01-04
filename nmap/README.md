# nmap:static

This repo contains a Dockerfile /  build script that can be used to build
docker image contains a statically-linked binary of nmap.

## Building

Generally, you can run the build by doing something like:

```
./build.sh
```

## Notes:

### scan

In order to do scans, Nmap must known a target. You can do this by doing
something like this:

```
docker run -it --rm wryyyyyyyy/nmap:static 127.0.0.1
```
