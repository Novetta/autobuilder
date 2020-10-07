selinux_apache
=========



Requirements
------------

 

Role Variables
--------------

No variables

Dependencies
------------

No dependencies

Playbook
----------------

- hosts: post_install
  any_errors_fatal: true
  tasks:

    - name: import role for apache selinux policies
      import_role:
        name: selinux_apache

License
-------
N/A

Author Information
------------------
K. Scott Johnston
