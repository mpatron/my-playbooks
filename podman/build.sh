#!/bin/bash

podman build -t podman-ubuntu-systemd:24.04 -t podman-ubuntu-systemd:noble -t podman-ubuntu-systemd:latest --file ubuntu/Containerfile
podman build -t podman-centos-systemd:stream9 -t podman-centos-systemd:latest --file centos/Containerfile
podman build -t podman-almalinux-systemd:10 -t podman-almalinux-systemd:latest --file almalinux/Containerfile