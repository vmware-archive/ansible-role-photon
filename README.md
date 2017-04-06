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

Copyright 2015 VMware, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Author Information

This role was created in 2015 by [Tom Hite / VMware](http://www.vmware.com/).
