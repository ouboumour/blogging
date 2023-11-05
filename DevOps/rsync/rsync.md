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

#### Check if the rsync utility is available

###### Method 1: using `which` utility
```bash 
which rsync
```
###### Method 2: using `command` utility
```bash 
command -v rsync
```
Both should return the utility absolute path, usually located at **/usr/bin/rsync**.

#### Check SSH Connection to the target machine
Since rsync uses the SSH protocol behind the scenes,
you should make sure you can ssh the target machine before going any further.
```bash
ssh -p <PORT_NUMBER> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>
```

#### Check the target directory permissions
Make sure you have the read/write permissions regrading the target directory.