# Generic

## The Aim
This tutorial will be a generic one in a way that the sections bellow will usually be not related at all.
It's gonna act as a temporary (or not)
container for all those useful hints / commands that I find kind of hard
to categorize and put in a more specific tutorial due to their little sizes, ...

## Get Information about the current used OS

#### Get useful information about the specific flavor of the OS and its kernel
```bash
uname -a
```
#### Get useful information about the Linux used Distro
```bash
cat /etc/os-release
```
###### Comparison
In summary, `uname -a` provides more low-level and detailed information about the system,
including kernel-related details,
while `cat /etc/os-release` gives specific information about the operating system,
such as its name, version, and related metadata.

## Users/Groups

#### Create a user without a password + Add to group
The command bellows creates a group with the same name as the user implicitly.

```bash
useradd <USER_NAME> -G <SUPPLEMENTARY_GROUPS>
```

#### Create a user with a password
The command bellows creates a group with the same name as the user implicitly.

```bash
adduser <USER_NAME>
```

#### Add an existing user to an existing group
```bash
usermod -aG <USER_NAME> <GROUP_NAME>
```

#### Delete an existing user (with the main group)
```bash
userdel -r <USER_NAME>
```

With `-r` to remove home directory and mail spool located at `/var/mail/<USER_NAME>`.

#### Delete an existing group
```bash
groupdel -f <USER_NAME>
```

With `-f` to delete a group even if it is the primary group of a user.

#### Set/Change password for an existing user
```bash
passwd <USER_NAME>
```