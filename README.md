# Myproject Ansible Project avec molecule

## Directory Structure

The directory structure follows best practices recommended by the Ansible
community. Feel free to customize this template according to your specific
project requirements.

~~~shell
 .
├── AGENTS.md
├── ansible.cfg
├── ansible-navigator.yml
├── argspec_validation_plays.meta.yml
├── argspec_validation_plays.yml
├── collections
│   ├── ansible_collections
│   │   └── myorg
│   │       └── myproject
│   │           ├── CHANGELOG.md
│   │           ├── galaxy.yml
│   │           ├── meta
│   │           │   └── runtime.yml
│   │           ├── README.md
│   │           └── roles
│   │               └── run
│   │                   ├── README.md
│   │                   └── tasks
│   │                       └── main.yml
│   └── requirements.yml
├── devfile.yaml
├── inventory
│   ├── argspec_validation_inventory.yml
│   ├── group_vars
│   │   ├── all.yml
│   │   ├── db_servers.yml
│   │   ├── production.yml
│   │   ├── test.yml
│   │   └── web_servers.yml
│   ├── hosts.yml
│   └── host_vars
│       ├── server1.yml
│       ├── server2.yml
│       ├── server3.yml
│       ├── switch1.yml
│       └── switch2.yml
├── linux_playbook.yml
├── molecule
│   ├── linux
│   │   ├── cleanup.yml
│   │   ├── converge.yml
│   │   ├── create.yml
│   │   ├── dependency.yml
│   │   ├── destroy.yml
│   │   ├── inventory
│   │   │   └── hosts.yml
│   │   ├── molecule.yml
│   │   ├── prepare.yml
│   │   └── verify.yml
│   ├── network
│   │   ├── cleanup.yml
│   │   ├── converge.yml
│   │   ├── create.yml
│   │   ├── destroy.yml
│   │   ├── inventory.yml
│   │   ├── molecule.yml
│   │   └── verify.yml
│   └── requirements.yml
├── network_playbook.yml
├── podman
│   ├── almalinux
│   ├── centos
│   │   ├── Containerfile
│   │   └── readme.md
│   └── ubuntu
│       ├── Containerfile
│       └── readme.md
├── README.md
├── site.yml
└── srv
    └── httpd.j2
~~~

## Compatible with Ansible-lint

Tested with ansible-lint >=24.2.0 releases and the current development version
of ansible-core.

~~~bash
podman build -t podman-centos-systemd:stream9 -t podman-centos-systemd:latest .

molecule test --scenario-name linux

molecule destroy --scenario-name linux

clear && molecule reset --scenario-name linux --report --command-borders && molecule test --scenario-name linux --report --command-borders

# Debug image conatainer
podman run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --name mycentos localhost/podman-centos-systemd:latest
podman exec -it mycentos bash
~~~
