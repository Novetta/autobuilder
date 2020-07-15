Role Name
=========

Role will copy kickstart files to the esxi_kickstart_copy/files folder then copy to PXE server for network boot

Requirements
------------

kickstart role must be ran first to generate kickstart files

Role Variables
--------------

N/A

Dependencies
------------

pyvmomi and ssh access to host. PXE server providing network boot

Example Playbook
----------------

Store a playbook to call the role inside of the root of roles/:

- name: Copy ESXi KS Files to http server
  become: true
  hosts: pxe_servers
  
  roles:
    - esxi_kickstart_copy

License
-------

N/A

Author Information
------------------

Kenneth Henry
