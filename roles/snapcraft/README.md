snapcraft
=========

This role ensures states ov provided snaps for the snapcraft store.

Requirements
------------

snapcraft

Role Variables
--------------

### snapcraft

**Type:** dict  
**Default:** none
**Description:** Dict containing dicts and sub lists.  
**Example:**  

```yaml
snapcraft:
  snaps:
    ...
```

### snapcraft.snaps

**Type:** dict  
**Default:** none
**Description:** List of dicts containing the snaps name, state, channel and classic switch.  
**Example:**  

```yaml
snapcraft:
  snaps:
    - { name: "example-snap", state: "present", channel: "stable", classic: true }
```

### channel

**Type:** str  
**Default:** `stable`  
**Description:** Define which release of a snap is installed and tracked for updates. This option can only be specified if there is a single snap in the task.  

### slassic

**Type:** bool  
**Default:** `false`  
**Description:** Confinement policy. The classic confinement allows a snap to have the same level of access to the system as "classic" packages, like those managed by APT. This option corresponds to the --classic argument. This option can only be specified if there is a single snap in the task.  

Example Playbook
----------------

```yaml
---
- name: Example playbook
  hosts: all
  roles: 
    - { role: snapcraft }
```

License
-------

MIT

Author Information
------------------

*Name:* Tim Oliver Rabl  
*GitHub:* [here](https://github.com/timrabl)
