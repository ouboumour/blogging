# rsync

## Definition
**rsync** stands for **R**emote **S**ynchronization.

**rsync** is a **file synchronization and transfer network tool**.

Unlike **SCP**, **rsync** is not a protocol.

Like **SCP**,
**rsync** uses the SSH protocol to copy directories and files securely between two different machines on a network.

**rsync** is a more powerful and efficient tool compared to **SCP** thanks to its **delta transfer approach**.

Here's how **rsync** typically works:

1. It compares the file sizes and checksums of the source and destination files.
2. If the sizes and checksums match, rsync assumes that the files are identical and does not transfer them, even if the modification timestamps are different.

## Prerequisites

#### Check if the rsync utility is available on both instances

<tabs>
    <tab title="Using command">
        <code-block lang="bash">command -v rsync</code-block>
    </tab>
    <tab title="Using which">
        <code-block lang="bash">which rsync</code-block>        
    </tab>
</tabs>

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
If you run the command with the `--dry-run` or `-n` option, the command will not transfer the files,
instead it'll check the SSH connection,
the destination path and give you a list files that'll be transferred if you run it without that option.
```bash
rsync -avz --delete [--dry-run|-n] <LOCAL_FILE_PATH> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>:<REMOTE_SERVER_DIRECTORY_PATH> 
```

With:

`-a`: archive mode is -rlptgoD (no -A,-X,-U,-N,-H).

`-v`: to increase verbosity for more visibility of what's going on once you run the command.

`-z`: compress file data during the transfer for faster one.

`--delete`: delete extraneous files from destination dirs. 

> **rsync** command options are alluring, for an exhaustive list uses the `--help` option.
{style="note"}


#### Run rsync "for real"
To transfer file for real, just get rid of the `--dry-run` or `-n` option.

```bash
rsync -rv <LOCAL_FILE_PATH> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>:<REMOTE_SERVER_DIRECTORY_PATH> 
```

>Like with scp command,
you can flip the direction
and copy files from the remote server to your local instance just by flipping the command args order.
{style="note"}

```bash
rsync -rv <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>:<REMOTE_SERVER_DIRECTORY_PATH> <LOCAL_FILE_PATH>
```