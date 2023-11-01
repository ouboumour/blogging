# OpenSSH

## Definition

**OpenSSH** is a **remote management tool**, that gives you access to run commands on another machine from your own machine.

OpenSSH is developed by OpenBSD project.

OpenSSH is kind of the standard for remote access tools in the Linux community.  

OpenSSH is a suite of utilities (binaries), the two most important are the server and the client components.

##  Install openssh-client

#### Check if openssh-client is installed
```bash
which ssh
```
If the command returns the ssh binary path (commonly **/usr/bin/ssh**), it means openssh-client is already installed.

Otherwise, you could search for the package using your package manager. 

###### Debian-based Linux distros (Ubuntu, Mint, ...)
```bash
apt search openssh-client
```
###### RPM-based Linux distros (RHEL, CentOS, Fedora, ...)
```bash
[yum|dnf] search openssh-clients
```

The output should mention the package if it exists.

The openssh-client is installed by default on most Linux instances. Otherwise, you can install it running the command bellow.
###### Debian-based Linux distros (Ubuntu, Mint, ...)
```bash
apt install -y openssh-client
```
###### RPM-based Linux distros (RHEL, CentOS, Fedora, ...)
```bash
[yum|dnf] install -y openssh-clients
```

And that's it! You should be able now to connect to a remote machines.  

If you encounter any problems, you can start troubleshooting by checking the service status using systemctl.
```bash
systemctl status sshd
```
Note: for Debian-based Linux distros you can use interchangeably **ssh** and **sshd**, not the case in RPM-based Linux distros where you must use only **sshd**.

## Connect to a remote machine using OpenSSH Client
#### Remote machine prerequisites
1. Install **openssh-server** package.
2. Allows traffic incoming via port 22.

#### Connect to remote machine using OpenSSH Client
Once the prerequisites above are satisfied, you can go ahead and connect to the remote machine.
```bash
ssh <YOUR_REMOTE_SERVER_USERNAME>@<YOUR_REMOTE_SERVER_ADDRESS>
```
Note: For the very first time you are trying to connect to the remote machine, you'll be asked if you are sure you want to connect, just type yes. After that, you'll be asked to type the password for that specific user you want to connect with. Type the password and hit enter.