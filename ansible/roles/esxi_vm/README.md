Role Name
=========

Role will create a Windows Server VM and CentOS 7 VM to be used in subsequent plays

Requirements
------------

esxi_kickstart, esxi_kickstart_copy, esxi_post, esxi_advanced, esxi_datastore must be ran first against the host(s)

Role Variables
--------------

    esxi_username: 
    esxi_password: 
    esxi_ip_address: 
    esxi_subnet_address: 
    esxi_gateway_address: 
    esxi_dns_address: 
    esxi_domain_name:

Dependencies
------------

pyvmomi and ssh access to host

Example Playbook
----------------

Store a playbook to call the role inside of the root of roles/:

- name: Beginning virtual machine creation
  #become: true
  hosts: localhost
  gather_facts: false

  roles:
    - esxi_vm

License
-------

N/A

Author Information
------------------

Kenneth Henry
