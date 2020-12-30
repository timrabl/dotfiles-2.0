nvm
=========

This role installs nvm and the latest version of node.

Requirements
------------

None

Role Variables
--------------

### nvm

**Type:** dict  
**Default:** none
**Description:** Dict containing sub list and dicts.  
**Example:**  

```yaml
nvm:
  url: ...
  version: ...
  dest: ...
  owner: ...
  group: ...
  mode: ...
```

### nvm.url

**Type:** str  
**Default:** `https://raw.githubusercontent.com/nvm-sh/nvm/`  
**Description:** The URL where to get the nvm install script from.  
**Example:**  

```yaml
nvm:
  url: "https://raw.githubusercontent.com/nvm-sh/nvm/"
  ...
```

### nvm.version

**Type:** str  
**Default:** `v0.37.2`  
**Description:** The version of the install script.  
**Example:**  

```yaml
nvm:
  ...
  version: "v0.37.2"
  ...
```

### nvm.dest

**Type:** str  
**Default:** `/tmp/nvm_install.sh`  
**Description:** The location where the script is stored.  
**Example:**  

```yaml
nvm:
  ...
  dest: "/tmp/nvm_install.sh"
  ...
```

### nvm.owner

**Type:** str  
**Default:** `$USER`  
**Description:** Ownership of the install script.  
**Example:**  

```yaml
nvm:
  ...
  owner: "{{ ansible_env.USER }}"
  ...
```

### nvm.group

**Type:** str  
**Default:** `$USER`  
**Description:** Group ownership of the install script.  
**Example:**  

```yaml
nvm:
  ...
  group: "{{ ansible_env.USER }}"
  ...
```

### nvm.mode

**Type:** str  
**Default:** `0750`  
**Description:** Permission of the install script.  
**Example:**  

```yaml
nvm:
  ...
  mode: "0750"
  ...
```

### url

**Type:** str  
**Default:** `https://raw.githubusercontent.com/nvm-sh/nvm/`  
**Description:** The URL where to get the nvm install script from.  

### version

**Type:** str  
**Default:** `v0.37.2`  
**Description:** The version of the install script.  

### dest

**Type:** str  
**Default:** `/tmp/nvm_install.sh`  
**Description:** The location where the script is stored.  

### owner

**Type:** str  
**Default:** `$USER`  
**Description:** Ownership of the install script.  

### group

**Type:** str  
**Default:** `$USER`  
**Description:** Group ownership of the install script.  

### mode

**Type:** str  
**Default:** `0750`  
**Description:** Permission of the install script.  

Example Playbook
----------------
```yaml
---
- name: Example
  hosts: all
  roles: 
    - { role: nvm }
```

License
-------

MIT

Author Information
------------------

**Name:** Tim Oliver Rabl  
**GitHub:** [here](<https://github.com/timrabl>)
