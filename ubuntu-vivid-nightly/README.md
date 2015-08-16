# Ubuntu Vivid Nightly

Ubuntu Vivid image with an ```apt-get update && apt-get upgrade -qy```, tagged
by date created.

This allows child images to take full advantage of Docker build caching by
skipping their own ```apt-get update```. Use of ```apt-get install <package>```
should only break if a package version has been removed due to a security
concern.
