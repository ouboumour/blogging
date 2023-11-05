# rsync (Remote Synchronization)

## Definition
**rsync** stands for **R**emote **S**ynchronization.

**rsync** is a **file synchronization and transfer network tool**.

Unlike **SCP**, **rsync** is not a protocol.

Like **SCP**,
**rsync** uses the SSH protocol to copy directories and files securely between two different machines on a network.

**rsync** is considered more efficient than **SCP** thanks to its **delta transfer approach**. 

Here's how **rsync** typically works:

1. It compares the file sizes and checksums of the source and destination files.
2. If the sizes and checksums match, rsync assumes that the files are identical and does not transfer them, even if the modification timestamps are different.

## Prerequisites

#### Check if the rsync utility is available on both instances

###### Method 1: using `which` utility
```bash 
which rsync
```
###### Method 2: using `command` utility
```bash 
command -v rsync
```
Both should return the utility absolute path, usually located at **/usr/bin/rsync**.
If that's not the case, you can install the package **rsync** using apt, dnf,
yum or whatever your package manager is depending on your Linux distros. 

#### Check SSH Connection to the target machine
Since rsync uses the SSH protocol behind the scenes,
you should make sure you can ssh the target machine before going any further.
```bash
ssh -p <PORT_NUMBER> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>
```

#### Check the target directory permissions
Make sure you have the read/write permissions regrading the target directory.

## Copy directories/files using scp

#### Dry run for an overview of what's going to happen
If you run the command with the `--dry-run` option, the command will not transfer the files,
instead it'll check the SSH connection,
the destination path and give you a list files that'll be transferred if you run it without that option.
```bash
rsync -rv --dry-run <LOCAL_FILE_PATH> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>:<REMOTE_SERVER_DIRECTORY_PATH> 
```

With:

`-r`: for recursive files copy if dealing with directories.

`-v`: to increase verbosity for more visibility of what's going on once you run the command.