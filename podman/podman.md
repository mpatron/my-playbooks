# Install podman

~~~bash
podman kill $(podman ps -q)
podman rm $(podman ps -a -q)
podman rmi $(podman images -q)
podman rmi --all --force
podman image prune --all --force
podman container prune --force
podman volume prune --force
podman network prune --force
podman system prune --force
~~~
