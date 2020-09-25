# Introduction

This document will briefly detail the following:



*   Considerations and final scope of automation tools to be used.
*   Identified boundaries between Windows 10 initial deployment and post-deployment configuration.


# Automation Tools Considerations

I researched and considered the following automation tools:



*   Initial deployment:
    *   Autounattended.xml answer file
    *   Windows Assessment and Development Kit (ADK) for Windows 10 (Used to create answer file)
*   Post deployment:
    *   Ansible (push based automation)
    *   Puppet (pull based automation)
    *   Chef (pull based automation)
    *   SaltStack (push and pull based automation)
    *   Terraform (push and pull based automation)


## Autounattended.xml answer file

Autounattended.xml answer files are the simplest form of creating an unattended deployment of Windows 10. It supports scripted installation on ISO, USB, and PXE. Autounattended.xml answer files will be used for the Autobuilder project in the form of an ISO. The answer file will handle disk configuration, Out-of-box-Experience (OOBE) configuration, core network configuration, and script runs to configure WinRM/OpenSSH.


## Windows Assessment and Development Kit (ADK)

The ADK provides a tool called Windows System Image Manager (SIM) that provides a console to lessen the difficulty of autounattended.xml creation. 


## Ansible

Ansible is a push based and agentless Infrastructure as Code (IaC) solution that you only install once. Ansible is a very powerful solution while only needing SSH and Python configured on the controller and targets for most modules. The solution also has excellent vendor and community support with detailed documentation. Ansible is best suited for configuration management and will be used for the Autobuilder project


## Terraform

Terraform is another agentless solution that leverages the Go programming language. If ansible is a configuration management tool, terraform can be seen as a provisioning tool for your environment/architecture. My research showed both of these tools can integrate well together and can invoke each other. Terraform will not be used here but will be considered during vCenter and Virtual Machine provisioning steps.


## Puppet, Chef, and SaltStack

All three of the solutions require installation on all machines. Puppet uses Puppet DSL as syntax, Chef uses Ruby as syntax, and SaltStack uses YAML syntax like Ansible. All three have a lot of overlap with Ansible and it did not seem like the vendor/community support and documentation was as comprehensive as Ansible. There are currently no plans to revisit these solutions later in the project.


# Initial and Post Deployment Boundary

Since the Autounattended.xml answer file comes with plenty of configuration options, a determination needed to be made on what the answer file will configure during initial deployment, and what ansible will handle post-deployment. After discussions with team members, we decided that it would be most effective to configure values that are mostly static and rarely change, while allowing other configuration steps more flexibility to be changed dynamically using ansible. Having the answer file use powershell scripts to configure WinRM and OpenSSH is key to allow the controller to interface with the windows host using win modules

The following will be core configurations inside of the Autounattended.xml answer file used during initial deployment:



*   Disk configuration
*   Product Key
*   Organization information
*   Firewall configuration
*   Basic network configuration
*   Setting administrator password (Known to Ansible controller)
*   SSH key copy from controller
*   OpenSSH and WinRM configuration



The following will be high-level objectives Ansible will accomplish via win modules



*   Gather facts on WIndows hosts
*   Install and uninstall MSIs
*   Start, stop, and manage Windows services
*   Create and manage local users and groups
*   Fetch files from remote sites
*   Push and execute any PowerShell scripts



NOTE: Ansible will be used to quickly generate the Autounattended.xml answer files using jinja2 templates once it is initially created via the SIM tool. Since the answer file will be ultimately stored inside of an ISO file, the advanced configuration of copying the files to a network share during network boot will not be used. The ISO will be directly attached to the VM or physical device.
