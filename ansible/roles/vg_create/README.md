vg_create
=========

Create a new volume group for storage on CentOS

Requirements
--------------

A disk device must be added prior to running this role

Role Variables
--------------

No variables

Dependencies
------------

Linux adds disk device names sequentially, i.e. /dev/dsa, /dev/sdb, etc. The OS installs on /dev/sda, the secondary disk will be /dev/sdb. Tasks main.yml will need to be edited if more disks are added.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

- hosts: post_install
  any_errors_fatal: true
  tasks:

    - name: import role to create a volume group
      import_role:
        name: vg_create

License
-------


Author Information
------------------
