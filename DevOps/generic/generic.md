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
The command bellows creates a group with the same name as the user implicitly.

```bash
usermod -aG <USER_NAME> <GROUP_NAME>
```