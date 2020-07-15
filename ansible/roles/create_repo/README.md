create_repo
===========

This role will setup a repo server from previous downloaded repo files.

Requirements
------------

This role requires repo files that have been created on another server. Currently the repo files that it is using are:<br>
    <li>`base.tar.gz`     -  CentOS base repo<br>
    <li>`epel.tar.gz`     -  CentOS EPEL repo<br>
    <li>`extras.tar.gz`   -  CentOS extras repo<br>
    <li>`updates.tar.gz`  -  CentOS updates repo<br>

Role Variables
--------------

| Name | Default | Description |
|------|---------|-------------|
| `repos` | `base.tar.gz`<br>`epel.tar.gz`<br>`extras.tar.gz`<br>`updates.tar.gz` | List of files that contain the repositories to load onto the repo server |

This role also uses a dictionary to set the baseurl for the files in `/etc/yum.repos.d`. The `repo` dictionary is set in the `group_vars` and looks like this:<br>
```
repo:
  Base:
    baseurl: < URL to Base repo >
  Extras:
    baseurl: < URL to Extras repo >
  Updates:
    baseurl: < URL to Updates repo >
  EPEL:
    baseurl: < URL to EPEL repo >
``` 

Dependencies
------------

Example Playbook
----------------

    - hosts: all
      roles: cerate_repo
