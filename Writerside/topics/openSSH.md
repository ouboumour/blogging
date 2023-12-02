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

<tabs>
    <tab title="Debian-based Linux Distros">
        <code-block lang="bash">apt search openssh-client</code-block>
    </tab>
    <tab title="RPM-based Linux Distros">
        <code-block lang="bash">dnf search openssh-client</code-block> 
    </tab>
</tabs>

The output should mention the package if it exists.

The openssh-client is installed by default on most Linux instances. Otherwise, you can install it running the command bellow.


<tabs>
    <tab title="Debian-based Linux Distros">
        <code-block lang="bash">apt install -y openssh-client</code-block>
    </tab>
    <tab title="RPM-based Linux Distros">
        <code-block lang="bash">dnf install -y openssh-clients</code-block> 
    </tab>
</tabs>


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
ssh -p <PORT_NUMBER> <YOUR_REMOTE_SERVER_USERNAME>@<YOUR_REMOTE_SERVER_IP_ADDRESS>
``` 

[//]: # (![ssh_first_connection]&#40;images/ssh_first_connection.png&#41;)


For the very first time you are trying to connect to the remote machine, you'll be asked if you are sure you want to connect, just type yes. After that, you'll be asked to type the password for that specific user you want to connect with. Type the password and hit enter.

On the very first ssh connection to a remote machine,
the **.ssh** directory is created inside the home directory
which contains the **known_hosts** file that stores all the servers fingerprints. That way it'll not ask you again for the connection confirmation.       
One other utility of the **known_hosts** file is that is preventing cyberattacks like Man-in-the-middle attack.

[//]: # (![ssh_tree_after_first_connection]&#40;images/ssh_tree_after_first_connection.png&#41;)