Role Name
=========

This role will join the target server to a domain.

Requirements
------------

The `create_repo` role should have already been run to ensure `realmd` and `sssd` are already installed.

Role Variables
--------------

All variables for this role are set in the files under `group_vars`.

| Name | Default | Description |
|------|---------|-------------|
| `domain` | DomainA.test | The name of the daomin to join. |
| `name_server` | dc-01 | The host (hostname, FQDN, or IP address) of the domain's name server. |
| `realm_user` | <null> | Name of the account that will perform the realm join. |
| `realm_password` | <null> | Password for the user that will perform the realm join. (This variable is sensitive and should be protected in a vault) |

Dependencies
------------

This role requires `realmd` and `sssd` to already be configured, so the `create_repo` role should have already been run.

Example Playbook
----------------

    - hosts: all
      roles: realm
