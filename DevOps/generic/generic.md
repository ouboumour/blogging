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
useradd <USER_NAME> -mG <SUPPLEMENTARY_GROUPS>
```

With:

`-m` to create the user's home directory.

`-G` for supplementary groups.

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

#### Switch to a specific user
```bash
su - <USER_NAME>
```

Without the `-` sign, the command will try to connect under the home directory of the user you are connecting **from**.

Otherwise, the command will try to connect under the home directory of the user you are connecting **to**.

#### Switch to the root user

You can either use the generic command as shown above. Otherwise, there are shorter options.

###### Method 1: Using su without specifying the root user
```bash
su -
```

###### Method 2: Using sudo 
```bash
sudo -i
```

#### Add a user to sudoers

###### Method 1: Editing `/etc/sudoers` file
1. Open `/etc/sudoers` file with an editor
2. Search for the line `root ALL=(ALL:ALL) ALL`
3. Append bellow the next line `<USER_NAME> ALL=(ALL:ALL) ALL`

###### Method 2: Using `visudo` utility
1. Open /etc/sudoers by typing `visudo`
2. Search for the line `root ALL=(ALL:ALL) ALL`
3. Append bellow the next line `<USER_NAME> ALL=(ALL:ALL) ALL`

###### Method 3: Adding the user to `sudo` group
```bash
usermod -aG sudo <USER_NAME>
```

## Looking for a file (including directories)

#### Get filepath from a name pattern
```bash
find <SUBTREE_ROOT_PATH> -n "<TARGET_FILE_PATTERN>" 
```

## Files counting

#### Count file lines
```bash
wc -l <FILE_PATH>
```

#### Count file words
```bash
wc -w <FILE_PATH>
```

#### Count file characters including the EOL (End of Line) ones
```bash
wc -c <FILE_PATH>
``` 