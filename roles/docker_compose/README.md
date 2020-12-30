docker-compose
=========

This role ensures docker-compose on the target system.

Requirements
------------

Technically none, but docker is needed for docker-compose to work.

Role Variables
--------------

### docker_compose

**Type:** dict  
**Default:** none
**Description:** Dict containing sub list and dicts.  
**Example:**  

```yaml
docker_compsoe:
  url: ...
  version: ...
  owner: ...
  group: ...
  mode: ...
```

### docker_compose.url

**Type:** str  
**Default:** `https://github.com/docker/compose/releases/download/`
**Description:** Download url for docker-compose.  
**Example:**  

```yaml
docker_compsoe:
  url: "https://github.com/docker/compose/releases/download/"
  ...
```

### docker_compose.version

**Type:** str  
**Default:** `1.27.4`
**Description:** Version that is downloaded.  
**Example:**  

```yaml
docker_compsoe:
  ...
  version: "1.27.4"
  ...
```

### docker_compose.owner

**Type:** str  
**Default:** `root`
**Description:** Ownership of the docker-compose binary file.  
**Example:**  

```yaml
docker_compsoe:
  ...
  owner: "root"
  ...
```

### docker_compose.group

**Type:** str  
**Default:** `root`
**Description:** Group ownership of the docker-compose binary file.  
**Example:**  

```yaml
docker_compsoe:
  ...
  group: "root"
  ...
```

### docker_compose.mode

**Type:** str  
**Default:** `0750`
**Description:** Permissions of the docker-compose binary file.  
**Example:**  

```yaml
docker_compsoe:
  ...
  mode: "0750"
  ...
```

### url

**Type:** str  
**Default:** `https://github.com/docker/compose/releases/download/`  
**Description:** Download url for docker-compose.  

### version

**Type:** str  
**Default:** `1.27.4`
**Description:** Version that is downloaded.  

### owner

**Type:** str  
**Default:** `root`
**Description:** Ownership of the docker-compose binary file.  

### group

**Type:** str  
**Default:** `root`
**Description:** Group ownership of the docker-compose binary file.  

### mode

**Type:** str  
**Default:** `0750`
**Description:** Permissions of the docker-compose binary file.  

Example Playbook
----------------
```yaml
---
- name: Example
  hosts: all
  roles: 
    - { role: docker-compose }
```

License
-------

MIT

Author Information
------------------

**Name:** Tim Oliver Rabl  
**GitHub:** [here](<https://github.com/timrabl>)
