# SCP (Secure Copy Protocol)

## Definition
**SCP** stands for **S**ecure **C**opy **P**rotocol.

**SCP** is a **file transfer network protocol**.

**SCP** uses the SSH protocol to copy directories and files securely between two different machines on a network.

## Prerequisites

#### Check if the scp utility is available
```bash 
which scp
```

#### Check the ssh connection
Since scp uses behind the scenes, the ssh protocol, make sure you can ssh the target machine before going any further.
```bash
ssh -p <PORT_NUMBER> <YOUR_REMOTE_SERVER_USERNAME>@<YOUR_REMOTE_SERVER_IP_ADDRESS>
```