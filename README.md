# ansible-role-photon

Ansible playbook to automate basic setup of Photon (OS) instances.

This role is quite small at this point. The majority of its purpose is
to enable Docker at boot since that is not the case by default with Photon.

## Requirements

None yet.

## Role Variables

None yet.

## Example playbook

```
---
- hosts: supervio
  sudo: no
  remote_user: root
  roles:
    - photon
```

## License

TBD

## Author Information

This role was created in 2015 by [Tom Hite / VMware](http://www.vmware.com/).
