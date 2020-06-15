create_repo
===========

This role will setup a repo server from previous downloaded repo files.

Requirements
------------

This role requires repo files that have been created on another server. Currently the repo files that it is using are:\
    - `base.tar.gz`     -  CentOS base repo\
    - `epel.tar.gz`     -  CentOS EPEL repo\
    - `extras.tar.gz`   -  CentOS extras repo\
    - `updates.tar.gz`  -  CentOS updates repo\

Role Variables
--------------

| Name | Default | Description |
|------|---------|-------------|
| `repos` | `base.tar.gz`   `epel.tar.gz`   `extras.tar.gz`   `updates.tar.gz` | List of files that contain the repositories to load onto the repo server |

Dependencies
------------

Example Playbook
----------------

    - hosts: all
      roles: cerate_repo
