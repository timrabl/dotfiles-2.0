vscode
=========

This role ensures the state of the provided extensions and ensures given settings in Visual Studio Code from a settings file.

Requirements
------------

Visual Studio Code

Role Variables
--------------
### vscode

**Type:** dict  
**Default:** { extensions: ..., settings: ... }  
**Description:** dict containing extensions and settings 
**Example:**  

```yaml
vscode:
  extensions:
    ...
  settings:
    ...
```

### vscode.extensions

*Type:* list  
*Default:* none  
*Description:* A list of dictionaries, each dict contains the extensions name and state.  
*Example:*  

```yaml
extensions:
  - { name: "sample-present", state: "present"}
  - { name: "sample-absent", state: "absent"}
```

### vscode.settings

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

### vscode.settings.source

*Type:* str  
*Default:* $HOME/vscode.settings  
*Description:*  The path of the source settings file  
*Example:*  

```yaml
...
  source: "/example/path/to/your/source/settings/file"
...
```

### destination
*Type:* str  
*Default:* OS dependent, see vars/main.yaml for detailed paths.  
*Description:* Path for global / user specific vscode settings  

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
