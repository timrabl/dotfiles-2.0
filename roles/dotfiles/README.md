dotfiles
=========

This role clones a remote dotfiles repository, synchronize it with the home folder of the `ansible_ssh_user`.
Optional os specific sub folders and version specific sub folders in the os folders are supported to, to separate the dotfiles.

Requirements
------------

None, since we're only copying files on the remote system.

Role Variables
--------------

### dotfiles

**Type:** dict  
**Default:** { url: ..., branch: ..., options: ...}  
**Description:** Dict containing sub dict and lists.  
**Example:**  

```yaml
dotfiles:
  url: ...
  branch: ...
  options:
    ...
```

### dotfiles.url

**Type:** str  
**Default:** none  
**Description:** URL of the remote dotfiles repository.  
**Example:**  

```yaml
dotfiles:
  url: "https://github.com/timrabl/dotfiles.git"
  ...
```

### dotfiles.branch

**Type:** str  
**Default:** main  
**Description:** Branch name which is pulled from the origin.  
**Example:**  

```yaml
dotfiles:
  ...
  branch: "main"
  ...
```

### dotfiles.options

**Type:** dict  
**Default:** { os_specific: ..., version_specific: ... }  
**Description:** Dictionary containing os and versions switching options.  
**Example:**  

```yaml
dotfiles:
  ...
  options:
    os_specific: ...
    version_specific: ...
```

### dotfiles.options.os_specific

**Type:** bool  
**Default:** True  
**Description:** This switch enabled the ability to use sub folders named with `ansible_distribution` for dotfiles separating.  
**Example:**  

```yaml
dotfiles:
  ...
  options:
    os_specific: True
    ...
```

### dotfiles.options.version_specific

**Type:** bool  
**Default:** True  
**Description:** This switch enabled the ability to use version specific sub folders in the above os specific sub folders named with `ansible_distribution_version` for more granular dotfiles separating.  
**Example:**  

```yaml
dotfiles:
  ...
  options:
    os_specific: True
    ...
```

### destination

**Type:** str  
**Default:** $HOME/.ansible/tmp/dotfiles  
**Description:** The temporary location, where the dotfiles are cloned to.

Example Playbook
----------------

```yaml
---
- name: Example playbook
  hosts: all
  roles: 
    - { role: dotfiles }
```

License
-------

MIT

Author Information
------------------

*Name:* Tim Oliver Rabl  
*GitHub:* [here](<https://github.com/timrabl>)
