# Haskell Platform

Haskell Platform image, originally made for working through Learn You a Haskell
for Great Good.

Uses ```dzaharee/dev``` as a base image. See accompanying
[ghci.sh](https://github.com/dzaharee/docker-images/blob/master/haskell-platform/ghci.sh)
which, when run on the host, will mount the current host directory at
```/home/dev/workdir/```, update the ```dev``` User and Group IDs to match the
host user's UID and GID, and start GHCi.
