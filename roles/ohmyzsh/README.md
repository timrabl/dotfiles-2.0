oh_my_zsh
=========

This role simply clones the oh-my-zsh repository into the given destination path.

Requirements
------------

None

Role Variables
--------------

### oh_my_zsh

**Type:** dict  
**Default:** none
**Description:** Dict containing dicts and sub lists.  
**Example:**  

```yaml
oh_my_zsh:
  url: ...
  branch: ...
  dest: ...
  force: ...
```

### oh_my_zsh.url

**Type:** str  
**Default:** `https://github.com/ohmyzsh/ohmyzsh`  
**Description:** URL of the oh-my-zsh repository.  
**Example:**  

```yaml
oh_my_zsh:
  url: "https://github.com/ohmyzsh/ohmyzsh"
  ...
```

### oh_my_zsh.branch

**Type:** str  
**Default:** `master`  
**Description:** Branch used for git checkout.
**Example:**  

```yaml
oh_my_zsh:
  branch: "master"
  ...
```

### oh_my_zsh.destination

**Type:** str  
**Default:** `$HOME/.oh-my-zsh`  
**Description:** Destination path.  
**Example:**  

```yaml
oh_my_zsh:
  ...
  dest: "{{ ansible_env.HOME }}/.oh-my-zsh"
  ...
```

### oh_my_zsh.force

**Type:** bool  
**Default:** `true`  
**Description:** Force switch, this overwrites local modified files.  
**Example:**  

```yaml
oh_my_zsh:
  ...
  force: true
```

### url

**Type:** str  
**Default:** `https://github.com/robbyrussell/oh-my-zsh`  
**Description:** URL of the oh-my-zsh repository.  

### destination

**Type:** str  
**Default:** `$HOME/.oh-my-zsh`  
**Description:** Destination path.  

### force

**Type:** bool  
**Default:** `true`  
**Description:** Force switch, this overwrites local modified files.  

### branch

**Type:** str  
**Default:** `master`  
**Description:** Branch used for git checkout.  


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
