vscode
=========

This role ensures the state of the provided extensions and ensures given settings in Visual Studio Code from a settings file.

Requirements
------------

Visual Studio Code

Role Variables
--------------

### extensions

*Type:* list  
*Default:* empty  
*Description:* A list of dictionaries, each dict contains the extensions name and state.  
*Example:*  

```yaml
extensions:
  - { name: "sample-present", state: "present"}
  - { name: "sample-absent", state: "absent"}
```

### settings

*Type:* dict  
*Default:* { source: ..., destination: ... }  
*Description:* Parent dict for source and destination  
*Example:*  

```yaml
settings:
  source:
    ...
  destination:
    ...
```

### settings.source

*Type:* str  
*Default:* $HOME/vscode.settings  
*Description:*  The path of the source settings file  
*Example:*  

```yaml
...
  source: "/example/path/to/your/source/settings/file"
...
```

### settings.destination
*Type:* str  
*Default:* OS dependent, see defaults/main.yaml for detailed paths.  
*Description:* Path for global / user specific vscode settings  
*Example:*  

```yaml
...
  destination: "/example/path/to/your/destination/settings/file"
```

Example Playbook
----------------

```yaml
- name: Example playbook
  hosts: all
  roles:
    - { role: vscode }
```

License
-------

MIT

Author Information
------------------

*Name:* Tim Oliver Rabl  
*GitHub:* [here](<https://github.com/timrabl>)
