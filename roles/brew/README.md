brew
=========

This role ensures homebrew, update and upgrades the local homebrew instance and ensures the state of the provided formulae and casks.

Requirements
------------

None, as this role install homebrew if it is not installed.

Role Variables
--------------

### brew

**Type:** dict  
**Default:** { formulae: ..., casks: ... }  
**Description:** Dict containing sub list and dicts.  
**Example:**  

```yaml
brew:
  formulae:
    ...
  casks:
    ...
```

### brew.formulae

**Type:** list  
**Default:** none  
**Description:** List of sub dictionaries containing the formulae name and state.  
**Example:**  

```yaml
brew:
  formulae:
    - { name: "example-present", state: "present" }
    - { name: "example-absent", state: "absent" }
  ...
```


### brew.casks

**Type:** list  
**Default:** none
**Description:** List of sub dictionaries containing the casks name and state.  
**Example:**  

```yaml
brew:
  casks:
    - { name: "example-present", state: "present" }
    - { name: "example-absent", state: "absent" }
  ...
```

### install_cmd

**Type:** str  
**Default:**   `/bin/bash -c $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)`  
**Description:** The shell install command for installing homebrew.  

### install_location

**Type:** str  
**Default:**  `/usr/local/bin/brew`  
**Description:** The default install location  

### list_formulae

**Type:** str  
**Default:**  `brew list --formulae | sed 's/\t/\r/g`  
**Description:** The command used for gathering the installed formulae.  

### list_casks

**Type:** str  
**Default:**  `brew list --casks | sed 's/\t/\r/g`  
**Description:** The command used for gathering the installed casks.  

### casks_app_dir

**Type:** str  
**Default:**  `~/Applications`  
**Description:** The default casks install directory.  

Example Playbook
----------------
```yaml
---
- name: Example
  hosts: all
  roles: 
    - { role: brew }
```

License
-------

MIT

Author Information
------------------

**Name:** Tim Oliver Rabl  
**GitHub:** [here](<https://github.com/timrabl>)
