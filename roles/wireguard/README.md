wireguard
=========

This role renders wireguard configuration files on the remote system.

Requirements
------------

Technically none, but wireguard is needed to make the configuration files useable.

Role Variables
--------------

### wireguard

**Type:** dict  
**Default:** none  
**Description:** Dict containing sub dict and lists.  
**Example:**  

```yaml:
wireguard:
  managed: ...
  privilege_escalation: ...
  configs:
    ...
```

### wireguard.managed

**Type:** str  
**Default:** `This file is managed by ansible, do not edit manually !`  
**Description:** Configuration file header.  
**Example:**  

```yaml:
wireguard:
  managed: "Example header"
  ...
```

### wireguard.privilege_escalation

**Type:** bool  
**Default:** `true`  
**Description:** Ansible become switch.  
**Example:**  

```yaml:
wireguard:
  ...
  privilege_escalation: true
  ...
```

### wireguard.config_path

**Type:** str  
**Default:** `/etc/wireguard`  
**Description:** Wireguard base directory.  
**Example:**  

```yaml:
wireguard:
  ...
  config_path: "/etc/wireguard"
  ...
```

### wireguard.config_path_owner

**Type:** str  
**Default:** `root`  
**Description:** Wireguard base directory ownership.  
**Example:**  

```yaml:
wireguard:
  ...
  config_path_owner: "root"
  ...
```

### wireguard.config_path_group

**Type:** str  
**Default:** `root`  
**Description:** Wireguard base directory group ownership.  
**Example:**  

```yaml:
wireguard:
  ...
  config_path_group: "root"
  ...
```

### wireguard.config_path_mode

**Type:** str  
**Default:** `root`  
**Description:** Wireguard base directory permissions.  
**Example:**  

```yaml:
wireguard:
  ...
  config_path_group: "root"
  ...
```

### wireguard.configs

**Type:** dict  
**Default:** none  
**Description:** Dict of wireguard configuration dicts.  
**Example:**  

```yaml:
wireguard:
  ...
  configs:
    ...
```

### wireguard.configs.< CONFIG FILENAME >

**Type:** dict  
**Default:** none  
**Description:** Configuration dict containing the configuration options.  
**Example:**  

```yaml:
wireguard:
  ...
  configs:
    < CONFIG FILENAME >:
      ...
```

### wireguard.configs.< CONFIG FILENAME >.interfaces

**Type:** dict  
**Default:** none  
**Description:** Dict containing the options for the interface section.  
**Example:**  

```yaml:
wireguard:
  ...
  configs:
    < CONFIG FILENAME >:
      interface:
        ...
```

### wireguard.configs.< CONFIG FILENAME >.peers

**Type:** dict  
**Default:** none  
**Description:** Dict containing the options for every the peer section.  
**Example:**  

```yaml:
wireguard:
  ...
  configs:
    < CONFIG FILENAME >:
      ...
      peers:
        ...
```

### wireguard.configs.< CONFIG FILENAME >.peers.< PEER NAME >

**Type:** dict  
**Default:** none  
**Description:** Dict containing the options for every the peer section.  
**Example:**  

```yaml:
wireguard:
  ...
  configs:
    < CONFIG FILENAME >:
      ...
      peers:
        example-peer-name:
          ...
```

### managed

**Type:** str  
**Default:** `This file is managed by ansible, do not edit manually !`  
**Description:** Configuration file header.  

### privilege_escalation

**Type:** bool  
**Default:** `true`  
**Description:** Ansible become switch.  

### wireguard.config_path

**Type:** str  
**Default:** `/etc/wireguard`  
**Description:** Wireguard base directory.  
**Example:**  

```yaml:
wireguard:
  ...
  config_path: "/etc/wireguard"
  ...
```

### config_path_owner

**Type:** str  
**Default:** `root`  
**Description:** Wireguard base directory ownership.  

### config_path_group

**Type:** str  
**Default:** `root`  
**Description:** Wireguard base directory group ownership.  

### config_path_mode

**Type:** str  
**Default:** `root`  
**Description:** Wireguard base directory permissions.  

### config_owner

**Type:** str  
**Default:** `root`  
**Description:** File ownership.  

### config_group

**Type:** str  
**Default:** `root`  
**Description:** File group ownership.  

### config_mode

**Type:** str  
**Default:** `0640`  
**Description:** File permissions. 

Example Playbook
----------------

```yaml
---
- name: Example playbook
  hosts: all
  roles: 
    - { role: wireguard }
```

License
-------

MIT

Author Information
------------------

*Name:* Tim Oliver Rabl  
*GitHub:* [here](https://github.com/timrabl)