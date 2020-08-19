vg_extend
=========

Extend an existing volume group.

Requirements
------------

Update the tasks main.yml file to reflect the disk device name in the OS. /dev/sdb, /dev/sdc, etc.

Role Variables
--------------

No variables

Dependencies
------------

No dependencies

Example Playbook
----------------

- hosts: post_install
  any_errors_fatal: true
  tasks:

    - name: import role to extend a volume group
      import_role:
        name: vg_extend

License
-------


Author Information
------------------
