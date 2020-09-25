Role Name
=========

This role installs OSSEC on the target servers. This role should be replace by a Wazuh role.

Requirements
------------

This role uses the `expect` module which itself relies on `pexpect`. The CentOS repos do not have a new enough version of `pexpect`, so that is installed using `pip`. The `create_repo` role should have run to ensure `pip` has been installed.

Role Variables
--------------

All variables for this role are set in the files under `group_vars`.

| Name | Default | Description |
|------|---------|-------------|
| `ossec_tmp` | `/tmp/ossec` | This is a temporary location to install the place the `pexpect` and `ossec` tar files for installation. |

Dependencies
------------

The `create_repo` role should have been run to ensure `pip` is installed.<br>
This role expects the following files are placed in the `files` directory.<br>
     <li> `ossec_3.3.0.tar.gz` - The OSSEC file downloaded from the OSSEC GitHub releases.<br>
     <li> `ptyprocess.tar.gz` - Updated `ptyproess` from PyPI (requirement for `pexpect`).
     <li> `pexpect.tar.gz` - Updated `pexpect` from PyPI (requirement for the `expect` module).

Example Playbook
----------------

    - hosts: all
      roles: ossec
