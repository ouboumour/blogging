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