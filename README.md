# Groot tools

Groot's swiss army knife.

## Docker Scripts

Build an image for a particular distro.

```
$ groot-docker-build bionic
$ docker image ls
REPOSITORY          TAG                             IMAGE ID            CREATED             SIZE
groot               bionic                          afeef33e20d8        5 days ago          933MB
nvidia/opengl       1.0-glvnd-runtime-ubuntu18.04   7b22a33e979a        3 months ago        304MB
```

Then create a container attached to your workspace:

```
$ groot-docker-enter --distro=bionic --workspace=/mnt/mervin/workspaces/devel/maliput
$ docker container ls -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
b1b49a099f22        groot:bionic        "/bin/bash --login -i"   5 days ago          Up 51 minutes                           maliput
```
