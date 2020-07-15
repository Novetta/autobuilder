Role Name
=========

Role will create VMFS volume and folder structure. It will also copy necessary media into appropriate folders

Requirements
------------

esxi_kickstart, esxi_kickstart_copy, esxi_post, and esxi_advanced must be ran first against the host(s)

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

- name: Beginning datastore configuration and mount
  #become: true
  hosts: localhost
  gather_facts: false

  roles:
    - esxi_datastore

License
-------

N/A

Author Information
------------------

Kenneth Henry
