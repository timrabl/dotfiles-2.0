dotfiles
=========

This role ensures the passed arguments in the grub config file under `GRUB_CMDLINE_LINUX=`.
After that, the `update-grub` command is triggered.

Requirements
------------

GRUB

Role Variables
--------------

### grub

**Type:** dict  
**Default:** { config: ..., cmdline_linux: ... }  
**Description:** Dict containing sub dict and lists.  
**Example:**  

```yaml
grub:
  config: ...
  cmdline_linux: ...
```

### grub.config

**Type:** str  
**Default:** /etc/default/grub  
**Description:** GRUB config path where to replace the GRUB_CMDLINE_LINUX line.  
**Example:**  

```yaml
grub:
  config: /etc/default/grub
  ...
```

### grub.cmdline_linux

**Type:** list  
**Default:** none  
**Description:** List of args passed to GRUB_CMDLINE_LINUX line in the config.  
**Example:**  

```yaml
grub:
  ...
  cmdline_linux:
    - "example.enabled=0"
```

Example Playbook
----------------

```yaml
---
- name: Example playbook
  hosts: all
  roles: 
    - { role: grub }
```

License
-------

MIT

Author Information
------------------

*Name:* Tim Oliver Rabl  
*GitHub:* [here](https://github.com/timrabl)
