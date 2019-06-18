# ansible-role-photon

Ansible playbook to automate basic setup of Photon OS instances.

## Requirements

One instance of Photon OS running

## Role Variables

    docker_gid: 995

The docker group id to set (gets created if missing) for socket access and similar.

    docker_insecure_registries: []

Array of URLs to setup to allow the use of Docker insecure registries.

    remote_syslog_server: "{{ logstash_server }}"
    remote_syslog_port: "{{ logstash_port }}"

Set these two items to log to setup for logging to a remote syslog server.
Note that this assumes the use of logstash named variables, so if using
a role that includes those by default, you'd need not set them in your play.

    local_syslog_file: /var/log/messages

Set path to log locally, if unset, the resulting setup won't log to a file

    photon_yum_repo: https://dl.bintray.com/vmware/photon_release_1.0_TP2_x86_64
    photon_yum_repo_enabled: yes|no

Set these to utilize specifig Photon OS binary package repos.

## Example playbook

```

---
- hosts: photons
  sudo: no
  remote_user: root
  roles:
    - photon

```

# License and Copyright

Copyright 2015 VMware, Inc.  All rights reserved.

SPDX-License-Identifier: Apache-2.0 OR GPL-3.0-only

This code is Dual Licensed Apache-2.0 or GPLv3

## Author Information

This role was created in 2015 by [Tom Hite / VMware](http://www.vmware.com/).
