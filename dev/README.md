# Dev

Ubuntu Vivid based image with a generic ```dev``` user, workdir set at
```/home/dev/workdir```, and an entrypoint script that sets UIDs and GIDs for
worry-free volume mounting.

Example: ```docker run -it --rm -e "DEV_UID=1007" -e "DEV_GID=1007" dzaharee/dev```
