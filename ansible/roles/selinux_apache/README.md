selinux_apache
=========

Create a logical volume, create a directory to mount the volume and mount it.

Requirements
------------

Volume group must be present. 

Role Variables
--------------

No variables

Dependencies
------------

No dependencies

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

- hosts: post_install
  any_errors_fatal: true
  tasks:

    - name: import role to create logical volumes
      import_role:
        name: lvm_create

License
-------


Author Information
------------------
