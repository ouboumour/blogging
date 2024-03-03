# Generic

## The Aim
This tutorial will be a generic one in a way that the sections bellow will usually be not related at all.
It's gonna act as a temporary (or not)
container for all those useful hints / commands that I find kind of hard
to categorize and put in a more specific tutorial due to their little sizes, ...

## Retrieve system information

### Displays system information, including the kernel version
```bash
uname -a
```
### Get useful information about the Linux used Distro
```bash
cat /etc/os-release
```

#### Comparison
In summary, `uname -a` provides more low-level and detailed information about the system,
including kernel-related details,
while `cat /etc/os-release` gives specific information about the operating system,
such as its name, version, and related metadata.

### Shows disk space usage in a human-readable format
```bash
df -h
```

### Displays the amount of free and used memory
```bash
free -h
```

### Provides cpu information
```bash
lscpu
```

### Provides system uptime information
```bash
uptime
```

### Display the username
```bash
whoami
```

### Display the hostname
```bash
hostname
```

## Users/Groups

### Create a user without a password + Add to group
The command bellows creates a group with the same name as the user implicitly.

```bash
useradd <USER_NAME> -mG <SUPPLEMENTARY_GROUPS>
```

With:

`-m` to create the user's home directory.

`-G` for supplementary groups.

### Create a user with a password
The command bellows creates a group with the same name as the user implicitly.

```bash
adduser <USER_NAME>
```

### Add an existing user to an existing group
```bash
usermod -aG <USER_NAME> <GROUP_NAME>
```

### Delete an existing user (with the main group)
```bash
userdel -r <USER_NAME>
```

With `-r` to remove home directory and mail spool located at `/var/mail/<USER_NAME>`.

### Delete an existing group
```bash
groupdel -f <USER_NAME>
```

With `-f` to delete a group even if it is the primary group of a user.

### Set/Change password for an existing user
```bash
passwd <USER_NAME>
```

### Switch to a specific user
```bash
su - <USER_NAME>
```

Without the `-` sign, the command will try to connect under the home directory of the user you are connecting **from**.

Otherwise, the command will try to connect under the home directory of the user you are connecting **to**.

### Switch to the root user

You can either use the generic command as shown above. Otherwise, there are shorter options.


<tabs>
    <tab title="Method 1">
        <p>By using su without specifying the root user</p>
        <code-block lang="bash">su -</code-block>
    </tab>
    <tab title="Method 2">
        <p>By using sudo</p>
        <code-block lang="bash">sudo -i</code-block>
    </tab>
</tabs>

### Add a user to sudoers

<tabs>
    <tab title="Method 1">
        <procedure title="Editing `/etc/sudoers` file">
            <step>Open <code>/etc/sudoers</code> file with an editor.</step>
            <step>Search for the line <code>root ALL=(ALL:ALL) ALL</code></step>
            <step>Append bellow the next line <code>&lt;USER_NAME&gt; ALL=(ALL:ALL) ALL</code></step>
        </procedure>
    </tab>
    <tab title="Method 2">
        <procedure title="Using `visudo` utility">
            <step>Open /etc/sudoers by typing <code>visudo</code></step>
            <step>Search for the line <code>root ALL=(ALL:ALL) ALL</code></step>
            <step>Append bellow the next line <code>&lt;USER_NAME&gt; ALL=(ALL:ALL) ALL</code></step>
        </procedure>
    </tab>
    <tab title="Method 3">
        <procedure title="Adding the user to sudo group">
            <code-block lang="bash">usermod -aG sudo &lt;USER_NAME&gt;</code-block>
        </procedure>
    </tab>
</tabs>

## Looking for a file (including directories)

#### Get filepath from a name pattern
```bash
find <SUBTREE_ROOT_PATH> -n "<TARGET_FILE_PATTERN>" 
```

## Files counting

#### Count file lines

###### Using wc
```bash
wc -l <FILE_PATH>
```

###### using nl
```bash
nl <FILE_PATH>
```

#### Count file words
```bash
wc -w <FILE_PATH>
```

#### Count file characters including the EOL (End of Line) ones
```bash
wc -c <FILE_PATH>
```

## Get Instance LAN IP Address
#### Using `ip`
```bash
ip a
```

#### Using `ifconfig`
```bash
ifconfig
```

#### Using `hostname`
```bash
hostname -I
```

## Download resource from the Internet
#### Using `wget`
```bash
wget <RESOURCE_URL>
```

#### Using `curl`
```bash
curl -O <RESOURCE_URL>
```