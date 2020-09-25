Role Name
=========

This role will remove chronyd and install and configure ntpd.

Requirements
------------

The ntpd package should be installed in a previous role like `create_repo`.

Role Variables
--------------

All variables for this role are set in the files under `group_vars`.

| Name | Default | Description |
|------|---------|-------------|
| `time_server` | ntp-01 | The host (hostname, FQDN, or IP address) of the time server. |
| `timezone` | Universal | The time zone that should be set on the server. |

Dependencies
------------

`create_repo` should be run to ensure the ntpd package i installed.

Example Playbook
----------------

    - hosts: all
      roles: ntp
