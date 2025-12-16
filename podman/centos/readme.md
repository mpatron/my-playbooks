# Readme

## How to Build

Verify if podman is installed.

~~~bash
# Run on stream9 branch:
podman build -t podman-centos-systemd:stream9 -t podman-centos-systemd:latest .
~~~

## Verify image

~~~bash
podman images
~~~

## How to Use

~~~bash
podman pull localhost/podman-centos-systemd:latest # (or use the image you built earlier).
podman run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --name mycentos localhost/podman-centos-systemd:latest
podman exec -it mycentos bash
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
