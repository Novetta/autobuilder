Role Name
=========

Role will generate necessary kickstart files using jinja2 templating.

Requirements
------------

jinja2 template must exist inside of the esxi_kickstart/templates folder

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

- name: Generate ESXi Configuration Files
  hosts: localhost
  
  roles:
    - esxi_kickstart

License
-------

N/A

Author Information
------------------

Kenneth Henry
