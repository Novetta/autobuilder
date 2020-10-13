selinux_apache
=========

Apply SELinux labels and type enforcemnt on apps and web services. This role installs Apache, SELinux policycoreutils and SELinux setroubshoot packages. 
Non-default directoriea and ports are created and SELinux lables and type enforcment for http is applied.

Requirements
------------

No requirements

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
        name: selinux_apache

License
-------


Author Information
------------------
