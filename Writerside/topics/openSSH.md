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