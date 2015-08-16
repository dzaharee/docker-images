# Dev

Ubuntu Vivid (Nightly) based image with a generic ```dev``` user, workdir set at
```/home/dev/workdir```, and an entrypoint script that sets UIDs and GIDs for
worry-free volume mounting.

Example: ```docker run -it --rm -e "DEV_UID=1007" -e "DEV_GID=1007" dzaharee/dev```

See
[dzaharee/haskell-platform](https://github.com/dzaharee/docker-images/tree/master/haskell-platform)
for an example of how this image could be used.
