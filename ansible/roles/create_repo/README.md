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

All of the variables for this role are set in the files under the `group_vars` directory.

| Name | Default | Description |
|------|---------|-------------|
| `dest_repo_path` | `{{ src_repo_path }}` | The location on the destination server where the downloaded repo files are stored. |
| `repo_baseurl` | `https://{{ repo_server }}/repo` on non-repo servers<br> `file://{{ dest_repo_path }}` on repo servers | The url used by `/etc/yum.repos.d/local.repo` to connect to the repos. |
| `repo_server` | `rpo-01` | The host (hostname, FQDN, or IP address) of the primary repo server.|
| `repos` | `base`<br> `centosplus`<br> `epel`<br> `extras`<br> `updates`<br> `wazuh` | A list of the repos that are to be configured on the destination servers is `/etc/yum.repos.d/local.repo` |
| `src_repo_path` | `/opt/repo` | The source directory on the ansible controller to sync the repo diretories from. This may require a manual process to update this directory. |

Dependencies
------------

Example Playbook
----------------

    - hosts: all
      roles: cerate_repo
