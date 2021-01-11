bluetooth
=========

This role sets the bluetooh controller mode to dual ( for now ).

Role Variables
--------------

### bluetooth

**Type:** dict
**Default:** { path: ..., controller_mode: ... }  
**Description:** Dict containing sub dict and lists.  
**Example:**  

```yaml
bluetooth:
  ...
```

### bluetooth.path

**Type:** str  
**Default:** /etc/bluetooth/main.conf  
**Description:** Path to the main bluetooth configuration file.  
**Example:**  

```yaml
bluetooth:
  config: ...
  ...
```

### bluetooth.controller_mode

**Type:** str  
**Default:** dual
**Description:** Bluetooth controller mode.
**Example:**  

```yaml
bluetooth:
  ...
  controller_mode: dual
```


### path

**Type:** str  
**Default:** /etc/bluetooth/main.conf  
**Description:** Path to the main bluetooth configuration file.  

### controller_mode

**Type:** str  
**Default:** dual
**Description:** Bluetooth controller mode.



Example Playbook
----------------

```yaml
---
- name: Example playbook
  hosts: all
  roles: 
    - { role: bluetooth }
```

License
-------

MIT

Author Information
------------------

*Name:* Tim Oliver Rabl  
*GitHub:* [here](https://github.com/timrabl)