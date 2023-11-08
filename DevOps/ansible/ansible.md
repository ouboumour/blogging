# Ansible

## Definition
**Ansible** is an **automation tool**.

**Ansible** is an open-source community project sponsored by Red Hat.

With **Ansible**, you can automate:
- Infrastructure
- Provisioning
- Configuration Management
- App Deployment
- Continuous Delivery (CD Pipeline)
- Security & Compliance
- Orchestration
- ...

**Ansible** is based on an **AGENTLESS ARCHITECTURE**, which means you don't have to install any agent on the target machines.

## Prerequisites

#### 1. Infrastructure
To learn Ansible, you'll need at least two target machines, VMs,
containers ot real machines, cloud-based or on-premise, Linux or windows,
doesn't matter.

In addition, you'll need a `control | workstation | master` host, the instance that will run commands against those `target machines | nodes | servers`.

#### 2. Provisioning
1. Make sure OpenSSH is installed on the workstation and all servers.
2. Connect manually to each server from thw workstation, answer `yes` to add it to the known_hosts file for each.
3. Create **two** SSH key pairs:
   1. The first one with the default path/name **with a passphrase**, then copy it to each server.  
   2. The second one with the `_ansible` prefix **without a passphrase**, then copy it to each server.