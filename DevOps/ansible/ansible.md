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

#### 3. Collaboration
Ansible is based on the called `playbooks` files.
They describe some automation tasks that we can run against the target servers.
It may be a good idea,
especially if you are not the only one working on those files to share it on a VCS Hosting Solution like `github`.

### 4. Install Ansible (Tested on Ubuntu)
###### Debian-based Distros
```bash
apt install -y ansible
```
###### RPM-based Distros (Tested on CentOS)
Install Pip
```bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
```
```bash
python3 get-pip.py --user
```
```bash
python3 -m pip install --user ansible
```

For more details,
visit the [official website](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).