Role Name
=========

Role will complete vSwitch configuration and add additional vmnic for failover

Requirements
------------

esxi_kickstart, esxi_kickstart_copy must be ran first against the host(s)

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

- name: Beginning esxi post-install configs
  gather_facts: false
  hosts: localhost
  strategy: free

  roles:
    - esxi_post

License
-------

N/A

Author Information
------------------

Kenneth Henry
