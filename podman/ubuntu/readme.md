# Readme

## How to Build

Verify if podman is installed.

~~~bash
# Run on 24.04 branch:
podman build -t podman-ubuntu-systemd:24.04 -t podman-ubuntu-systemd:noble -t podman-ubuntu-systemd:latest .
# Run on 22.04 branch:
podman build -t podman-ubuntu-systemd:22.04 -t podman-ubuntu-systemd:jammy .
# Run on 20.04 branch:
podman build -t podman-ubuntu-systemd:20.04 -t podman-ubuntu-systemd:focal .
# Run on 18.04 branch:
podman build -t podman-ubuntu-systemd:18.04 -t podman-ubuntu-systemd:bionic .
# Run on 16.04 branch:
podman build -t podman-ubuntu-systemd:16.04 -t podman-ubuntu-systemd:xenial .
~~~

## Verify image

~~~bash
podman images
~~~

## How to Use

~~~bash
podman pull localhost/podman-ubuntu-systemd:latest (or use the image you built earlier).
podman run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --name myubuntu localhost/podman-ubuntu-systemd:latest
podman exec -it myubuntu bash
~~~

## View the run container with

~~~bash
podman ps
~~~

## Enter in the container with

~~~bash
podman exec -it <container_id> bash
~~~

## Kill container with

~~~bash
podman kill <container_id>
podman kill $(podman ps -q)
~~~

## Remove container with

~~~bash
podman image rm -f <container_id>
podman rm $(podman ps -a -q)
~~~
