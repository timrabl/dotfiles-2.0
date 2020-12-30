pip
=========

This role ensures the state of the given pip packages.

Requirements
------------

pip

Role Variables
--------------

### pip

**Type:** dict  
**Default:** none  
**Description:** Dict containing dicts and sub lists.  
**Example:**  

```yaml
pip:
  packages: ...
```

### pip.packages

**Type:** list  
**Default:** none  
**Description:** List of dict containing dicts with package options.  
**Example:**  

```yaml
pip:
  packages:
    - { name: "example-pip-package", state: "present", extra_args: "--extra-arg-passed-to-pip" }
```

### state

**Type:** str  
**Default:** `present`
**Description:** Default state of provided pip package.  

### extra_args

**Type:** str  
**Default:** `""`
**Description:** Default state of provided pip package.  

Example Playbook
----------------

```yaml
---
- name: Example playbook
  hosts: all
  roles: 
    - { role: pip }
```

License
-------

MIT

Author Information
------------------

*Name:* Tim Oliver Rabl  
*GitHub:* [here](https://github.com/timrabl)
