vim
=========

This role ensures provided vim folders and installs provided autoload configs via remote.

Requirements
------------

vim

Role Variables
--------------

### vim

**Type:** dict  
**Default:** { folders: ..., autoload: ... }  
**Description:** Dict containing sub list and dicts.  
**Example:**  

```yaml
vim:
  folders:
    ...
  autoload:
    ...
```

### vim.folders

**Type:** list  
**Default:** none  
**Description:** List of dicts containing folders paths.  
**Example:**  

```yaml
vim:
  folders:
    - { path: "example" }
    # Optional with user, group or/and mode
    - { path: "example", owner: "example-user", group: "example-group", mode: "0640" }
```

### vim.autoload

**Type:** list  
**Default:** none  
**Description:** List of remote autoload config files.  
**Example:**  

```yaml
vim:
  autoload:
    - { url: "https://github.com/example/config.vim", dest: "/location/to/ensure/" }
    # Optional with user, group or/and mode
    - { url: "https://github.com/example/config.vim", dest: "/location/to/ensure/", owner: "example-user", group: "example-group", mode: "0640" }
```


Example Playbook
----------------
```yaml
- name: Example playbook
  hosts: all
  roles:
    - { role: vim }
```

License
-------

MIT

Author Information
------------------

*Name:* Tim Oliver Rabl  
*GitHub:* [here](<https://github.com/timrabl>)
