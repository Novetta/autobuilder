lvm_extend
=========

Extend an existing logical volume.

Requirements
------------

Must have unused disk space available or attache a new disk. If a new hard disk is added, the parted role with have to be run first.
CentOS 7 change the path variables for the xfs_growfs CentOS command. A variable must be added to specify the location of the xfs_growfs command

Role Variables
--------------

lvm_extend_grow_xfs: /sbin/xfs_growfs

Dependencies
------------

No dependencies

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

- hosts: post_install
  any_errors_fatal: true
  tasks:

    - name: import role to extend logical volumes
      import_role:
        name: lvm_extend2

License
-------


Author Information
------------------
