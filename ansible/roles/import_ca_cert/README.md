import_ca_cert
=========

Import the Trusted CA Cert.

Requirements
------------

A valide CA cert from a trusted authority

Role Variables
--------------

ca_path: /etc/pki/ca-trust/source/anchors

Handlers
-------------

- name: update trusted ca centos
  shell: /bin/update-ca-trust
  when: ansible_os_family == "CentOS"

Dependencies
------------

openssl installed.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

- hosts: post_install
  any_errors_fatal: true
  tasks:

    - name: impport role to import ca certificate
      import_role:
        name: import_ca_cert

License
-------


Author Information
------------------
