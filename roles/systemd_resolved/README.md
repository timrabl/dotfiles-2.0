systemd_resolved
=========

This role renders `systemd_resolved` configuration files under `/etc/systemd/resolved.conf.d/` and creates the config folder if it doesn't already exists.  

Requirements
------------

systemd-resolved

Role Variables
--------------

### resolved

**Type:** dict  
**Default:** none  
**Description:** Dict containing sub dict and lists.  
**Example:**  

```yaml
resolved:
  configs: ...
  confd: ...
```

### resolved.managed

**Type:** str  
**Default:** `This file is managed by ansible, do not edit manually !`  
**Description:** String rendered in the first line as comment.  
**Example:**  

```yaml
resolved:
  managed: "Example header !"
  ...
```

### resolved.configs

**Type:** dict  
**Default:** none  
**Description:** Dict containing one or more config dictionaries.  
**Example:**  

```yaml
resolved:
  configs:
    ...
  ...
```

### resolved.configs.< CONFIG FILENAME >

**Type:** dict  
**Default:** none  
**Description:** Dict containing the individual section keys and their config options.  
**Example:**  

```yaml
resolved:
  configs:
    < CONFIG FILENAME>:
      ...
  ...
```

### resolved.configs.< CONFIG FILENAME >.owner

**Type:** str  
**Default:** root  
**Description:** This sets the file owner of the rendered config file.  
**Example:**  

```yaml
resolved:
  configs:
    < CONFIG FILENAME>:
      owner: "example-user"
      ...
  ...
```

### resolved.configs.< CONFIG FILENAME >.group

**Type:** str  
**Default:** systemd-network  
**Description:** This sets the file group of the rendered config file.  
**Example:**  

```yaml
resolved:
  configs:
    < CONFIG FILENAME>:
      ...
      group: "example-group"
      ...
  ...
```

### resolved.configs.< CONFIG FILENAME >.mode

**Type:** str  
**Default:** 0640  
**Description:** This sets the file permissions of the rendered config file.  
**Example:**  

```yaml
resolved:
  configs:
    < CONFIG FILENAME>:
      ...
      mode: "example-0123"
      ...
  ...
```


### resolved.configs.< CONFIG FILENAME >.resolve

**Type:** dict  
**Default:** none  
**Description:** Dict containing all options / values for the Resolve section in the rendered config file.  
**Example:**  

```yaml
resolved:
  configs:
    <CONFIG FILENAME>:
      resolve:
        ...
  ...
```

### confd

**Type:** dict  
**Default:** { path: ... }  
**Description:** Dict containing configuration options for the confd folder.  

### confd.path

**Type:** str  
**Default:** `/etc/systemd/resolved.conf.d/`  
**Description:** The default path for the conf.d folder.  

### dir

**Type:** dict  
**Default:** { owner: ..., group: ..., mode: ...}  
**Description:** The dict containing defaults for the every folder in this role.  

### dir.owner

**Type:** str  
**Default:** `root`  
**Description:** The default owner of the conf.d folder.  

### dir.group

**Type:** str  
**Default:** `systemd-networkd`  
**Description:** The default group of the conf.d folder.  

### dir.mode

**Type:** str  
**Default:** `0750`  
**Description:** The default mode of the conf.d folder.  

### file.owner

**Type:** str  
**Default:** `root`  
**Description:** The default owner of the rendered config files.  

### file.group

**Type:** str  
**Default:** `systemd-networkd`  
**Description:** The default group of the rendered config files.  

### file.mode

**Type:** str  
**Default:** `0640`  
**Description:** The default mode of the rendered config files.  

### resolve_valid

**Type:** list  
**Default:** [ ... ]  
**Description:** List of allowed options in the **Resolve** Section according to the [docs](https://www.freedesktop.org/software/systemd/man/systemd_resolved.service.html).  

Example Playbook
----------------

```yaml
---
- name: Example playbook
  hosts: all
  roles: 
    - { role: systemd_resolved }
```

License
-------

MIT

Author Information
------------------

*Name:* Tim Oliver Rabl  
*GitHub:* [here](https://github.com/timrabl)
