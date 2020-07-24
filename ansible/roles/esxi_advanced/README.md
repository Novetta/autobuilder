Role Name
=========

Role will set advanced/security settings, along with adding NTP configuration

Requirements
------------

esxi_kickstart, esxi_kickstart_copy, and esxi_post must be ran first against the host(s)

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

- name: Beginning security hardening and advanced configuration tasks
  gather_facts: false
  hosts: localhost
  strategy: free
  
  roles:
  - esxi_advanced

License
-------

N/A

Author Information
------------------

Kenneth Henry
