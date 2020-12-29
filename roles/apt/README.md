apt
=========

This role ensures apt signing keys, apt repositories and apt packages.

Requirements
------------

apt

Role Variables
--------------

### apt

**Type:** dict  
**Default:** none  
**Description:** Dict containing sub dict and lists.  
**Example:**  

```yaml
apt:
  signing_keys:
    ...
  repositories:
    ...
  packages:
    ...
```

### apt.signing_keys

**Type:** dict  
**Default:** none  
**Description:** List of dicts containing the singing key url and state. 
**Example:**  

```yaml
apt:
  signing_keys:
    - { name: "https://example.org/path/to/signing/key", state: "present" }
  ...
```

### apt.repositories

**Type:** dict  
**Default:** none  
**Description:** List of dicts containing the repository name and state.
**Example:**  

```yaml
apt:
  ...
  repositories:
    - { name: "deb [arch=amd64] http://repo.example.org/repository/path/latest example-release main", state: "present" }
  ...
```

### apt.packages

**Type:** dict  
**Default:** none  
**Description:** List of dicts containing the package name and state.
**Example:**  

```yaml
apt:
  ...
  packages:
    - { name: "example-package", state: "present", install_recommends: true, autoremove: true, autoclean: true }
```

### apt.cache_valid_time

**Type:** int  
**Default:** 3600  
**Description:** Amount in sec till the apt cache expires.
**Example:**  

```yaml
apt:
  ...
  cahe_valid_time: 0123
```

### cache_valid_time

**Type:** int  
**Default:** 3600  
**Description:** Amount in sec till the apt cache expires.  

### install_recommends

**Type:** bool  
**Default:** true  
**Description:** Install recommend packages switch.

### autoremove

**Type:** bool  
**Default:** true  
**Description:** Auto remove switch for unnecessary packages.

### autoclean

**Type:** bool  
**Default:** true  
**Description:** Auto cleanup switch.

Example Playbook
----------------

```yaml
---
- name: Example playbook
  hosts: all
  roles: 
    - { role: apt }
```

License
-------

MIT

Author Information
------------------

*Name:* Tim Oliver Rabl  
*GitHub:* [here](https://github.com/timrabl)
